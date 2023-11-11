import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:gweiland_flutter_task/features/dashboard/domain/controller/dashboard_state.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/widgets/widgets.dart';
import 'package:gweiland_network/gweiland_network.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;
import '../model/cryptolist_model.dart';
import '../repository/crypto_repository.dart';

class DashBoardController extends StateNotifier<DashboardState> {
  final CryptoRepository driverRepository;
  final NetworkService networkService;
  final GoRouter routeProvider;
  DashBoardController({
    required this.driverRepository,
    required this.networkService,
    required this.routeProvider,
  }) : super(DashboardState(
          const NetworkState.initial(),
          CryptoListModel(),
        ));

  CryptoItem? selectedCryptoItem;
  List<CryptoItem> allItems = [];

  Future<void> getOrderList() async {
    // As we have no User Login Flow
    // Updating Network Token From Here Only
    networkService.updateHeader(
      {
        'X-CMC_PRO_API_KEY': 'dff20c05-ea08-43a5-8da3-e52e6536bc9b',
      },
    );
    // adding loading state in dashboard State to show loaders and shimmer effects
    state = state.copyWith(networkstate: const NetworkState.loading());
    final response =
        await driverRepository.getCriptoList(data: {'limit': 20, 'sort': 'market_cap'});
    state = await response.fold(
      // return error if failed network call
      (failure) => state.copyWith(networkstate: NetworkState.failure(failure)),
      // return success
      (response) async {
        try {
          // converting respose to model
          var model = CryptoListModel.fromJson(response.data);
          // adding Remote list to local varible for search and sorting
          allItems.addAll(model.data!);
          // updating state to notify UI with updated Data
          return state.copyWith(
              networkstate: NetworkState.success(response.statusMessage), cryptoListModel: model);
        } catch (e) {
          /// handling any error to update UI and notify User
          return state.copyWith(
              networkstate: NetworkState.failure(
                  AppException(message: e.toString(), statusCode: 100, identifier: '')));
        }
      },
    );
  }

  void getUrl(int cryptoId) async {
    // getting CryptoIcon from  meta2 api
    final response = await http.get(
        Uri.parse(
          'https://pro-api.coinmarketcap.com/v2/cryptocurrency/info?id=${cryptoId}',
        ),
        headers: {'X-CMC_PRO_API_KEY': 'dff20c05-ea08-43a5-8da3-e52e6536bc9b'});

    var item = json.decode(response.body);
    // from response getting logo url
    var cryptoIconUrl = item['data']['${cryptoId}']['logo'];
    // finding Item from cryptoList
    var cryptoItem = state.cryptoListModel!.data!.where((element) => element.id == cryptoId).first;
    // setting Url To already having List to prevent multiple time api calls
    cryptoItem.cryptoIconUrl = cryptoIconUrl;
    // finding the index of item in list
    var index = state.cryptoListModel!.data!.indexWhere((element) => element.id == cryptoId);
    state.cryptoListModel!.data![index] = cryptoItem;
    // update the state to notify widget to show logo
    state = state.copyWith(cryptoListModel: state.cryptoListModel!);
  }

  // Sorting List By Price or Value
  void sortBy(sortingType type) {
    var sortedList = state.cryptoListModel!.data!;
    if (type == sortingType.price) {
      // sorting by price  high To Low
      sortedList.sort((a, b) => (a.quote!.uSD!.price! > b.quote!.uSD!.price!) ? -1 : 1);
    } else {
      // sorting by value chang in 24  high To Low
      sortedList.sort((a, b) => (a.quote!.uSD!.volume24h! > b.quote!.uSD!.volume24h!) ? -1 : 1);
    }
    // assigning new value to state model list
    state.cryptoListModel!.data = sortedList;
    // notify sate to UI
    state = state.copyWith(cryptoListModel: state.cryptoListModel!);
  }

  // Sorting List By Price or Value
  void searchBy(String value) {
    List<CryptoItem> sortedList = [];
    // if value is  not null filtering list
    if (value.isNotEmpty) {
      allItems.forEach((element) {
        // searching by name or symbol
        if (element.name!.toLowerCase().contains(value.toLowerCase()) ||
            element.symbol!.toLowerCase().contains(value.toLowerCase())) {
          sortedList.add(element);
        }
      });
    } else {
      // if value is null or empty showing whole List
      sortedList = allItems;
    }
    // assigning new value to state model list
    state.cryptoListModel!.data = sortedList;
    // notify sate to UI
    state = state.copyWith(cryptoListModel: state.cryptoListModel!);
  }

  updateSelectedCard(CryptoItem cryptoItem) {
    selectedCryptoItem = cryptoItem;
    state = state.copyWith();
  }
}
