import 'package:boring_app/models/user.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase implements Store {
  @observable
  bool authenticated = false;

  @observable
  User user = User("Игорь");


  @action
  void authenticate() {
    this.authenticated = !this.authenticated;
    this.user = User("Игорь");
  }
}
