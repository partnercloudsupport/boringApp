import 'package:boring_app/models/message.dart';
import 'package:mobx/mobx.dart';

part 'messages_store.g.dart';

class MessagesStore = MessagesStoreBase with _$MessagesStore;

abstract class MessagesStoreBase implements Store {
  @observable
  ObservableList<Message> messages = ObservableList<Message>();

  @action
  void addMessage(Message message) {
    this.messages.add(message);
  }
}
