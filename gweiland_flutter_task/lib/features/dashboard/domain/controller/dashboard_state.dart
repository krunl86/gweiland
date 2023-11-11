import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gweiland_network/gweiland_network.dart';
import '../model/cryptolist_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState(
    NetworkState networkstate,
    CryptoListModel? cryptoListModel,
  ) = _DashboardState;
}
