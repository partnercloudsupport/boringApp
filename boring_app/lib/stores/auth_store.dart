import 'package:boring_app/models/user.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase implements Store {
  @observable
  bool authenticated = false;

  @observable
  User user = User('Polina');

  @action
  void authenticate() {
    this.authenticated = !this.authenticated;
  }

  @action
  void setUser(user) {
    this.user = user;
  }
}
