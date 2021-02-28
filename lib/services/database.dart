import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fypproject/models/Brew.dart';
import 'package:fypproject/models/uSer.dart';


class database {
  final String uId;
  database({this.uId});

  final CollectionReference cafeCollection = FirebaseFirestore.instance.collection(
      'brew crew'); //creates a collection in cloud firestore named as "kamran cafe and cafeCollection is just a refrence of that collection in this case"

  Future updateUserData(String sugar, String name, int strength) async {
    return await cafeCollection.doc(uId).set({
      'sugars': sugar,
      'name': name,
      'strength': strength,
    });
  }

  //userdata from snapshot
  userData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return userData(
        uid: uId,
        name: snapshot.data()['name'],
        sugars: snapshot.data()['sugar'],
        strength: snapshot.data()['strength']);
  }

  //get brew stream
  List<Brew> _brewListFromSnapShot(QuerySnapshot snapshot) {
    return snapshot.docs.map((document) {
      return Brew(
        name: document.data()['name'] ?? '',
        strength: document.data()['strength'] ?? 0,
        sugar: document.data()['sugar'] ?? '0',
      );
    }).toList();
  }

  Stream<List<Brew>> get brew {
    return cafeCollection.snapshots().map(_brewListFromSnapShot);
  }

  //get user doc stream
  Stream<userData> get userdata {
    return cafeCollection.doc(uId).snapshots().map(_userDataFromSnapshot);
  }
}
