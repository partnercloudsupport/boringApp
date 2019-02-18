import 'package:boring_app/stores/auth.store.dart';

class StoresManager {
  static final StoresManager _storesManager = new StoresManager._internal();

  StoresManager._internal();

  factory StoresManager() {
    return _storesManager;
  }

  AuthStore authStore;

  void init() {
    authStore = AuthStore();
  }
}
