import 'package:gweiland_flutter_task/common/data/shared_pref_service.dart';
import 'package:riverpod/riverpod.dart';

// have local storage service is for manage shared preference and local database
final storageServiceProvider = Provider((ref) {
  final SharedPrefsService prefsService = SharedPrefsService();
  prefsService.init();
  return prefsService;
});
