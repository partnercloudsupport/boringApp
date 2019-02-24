import 'package:boring_app/stores/auth_store.dart';

class StoresManager {
  static final StoresManager _storesManager = new StoresManager._internal();

  StoresManager._internal();

  factory StoresManager() {
    return _storesManager;
  }

  AuthStore auth;

  void init() {
    auth = AuthStore();
  }
}
