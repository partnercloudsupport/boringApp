// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

mixin _$AuthStore on AuthStoreBase, Store {
  final _$authenticatedAtom = Atom(name: 'AuthStoreBase.authenticated');

  @override
  bool get authenticated {
    _$authenticatedAtom.reportObserved();
    return super.authenticated;
  }

  @override
  set authenticated(bool value) {
    super.authenticated = value;
    _$authenticatedAtom.reportChanged();
  }

  final _$userAtom = Atom(name: 'AuthStoreBase.user');

  @override
  User get user {
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    super.user = value;
    _$userAtom.reportChanged();
  }

  final _$AuthStoreBaseActionController =
      ActionController(name: 'AuthStoreBase');

  @override
  void authenticate() {
    final _$prevDerivation = _$AuthStoreBaseActionController.startAction();
    try {
      return super.authenticate();
    } finally {
      _$AuthStoreBaseActionController.endAction(_$prevDerivation);
    }
  }
}
