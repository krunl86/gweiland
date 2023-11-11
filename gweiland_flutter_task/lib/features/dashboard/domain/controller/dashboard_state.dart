import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gweiland_network/gweiland_network.dart';
import '../model/cryptolist_model.dart';

part 'dashboard_state.freezed.dart';

// Dashboard State class is managing current state of dashboard with network api state.
@freezed
class DashboardState with _$DashboardState {
  factory DashboardState(
    // managing network state is api loading, successed, failed etc..
    NetworkState networkstate,
    // storing crypto list
    CryptoListModel? cryptoListModel,
  ) = _DashboardState;
}
