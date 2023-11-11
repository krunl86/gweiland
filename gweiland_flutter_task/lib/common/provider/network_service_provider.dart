import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_network/gweiland_network.dart';

final netwokServiceProvider = Provider<DioNetworkService>(
  (ref) {
    return DioNetworkService();
  },
);
