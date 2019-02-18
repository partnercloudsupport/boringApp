import 'package:mobx/mobx.dart';

part 'auth.store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase implements Store {
  @observable
  bool authenticated = false;

  @action
  void authenticate() {
    this.authenticated = !this.authenticated;
  }
}
