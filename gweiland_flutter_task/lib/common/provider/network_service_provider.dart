import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_network/gweiland_network.dart';

// network package istance to get access to netowrk repositories
final netwokServiceProvider = Provider<DioNetworkService>(
  (ref) {
    return DioNetworkService();
  },
);
