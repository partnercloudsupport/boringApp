import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:boring_app/models/user.dart';

final String users_dir = 'girls';
final String message_dir = 'messages';

final users = Firestore.instance.collection(users_dir);
final messages = Firestore.instance.collection(message_dir);

class FirestoreRepository {
  Future<String> saveToken(User user, String token) {
    return users
        .where('name', isEqualTo: user.name)
        .getDocuments()
        .then((snapshot) => snapshot.documents.first)
        .then((doc) {
          doc.reference.updateData({'deviceToken': token});
          return doc.documentID;
        })
        .then(
            (id) => Firestore.instance.collection(users_dir).document(id).get())
        .then((doc) => doc.documentID);
  }

  Stream<QuerySnapshot> getMessages(User user) {
    return messages.where('girl', isEqualTo: '${user.id}').snapshots();
  }
}
