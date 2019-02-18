// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

mixin _$MessagesStore on MessagesStoreBase, Store {
  final _$messagesAtom = Atom(name: 'MessagesStoreBase.messages');

  @override
  ObservableList<Message> get messages {
    _$messagesAtom.reportObserved();
    return super.messages;
  }

  @override
  set messages(ObservableList<Message> value) {
    super.messages = value;
    _$messagesAtom.reportChanged();
  }

  final _$MessagesStoreBaseActionController =
      ActionController(name: 'MessagesStoreBase');

  @override
  void addMessage(Message message) {
    final _$prevDerivation = _$MessagesStoreBaseActionController.startAction();
    try {
      return super.addMessage(message);
    } finally {
      _$MessagesStoreBaseActionController.endAction(_$prevDerivation);
    }
  }
}
