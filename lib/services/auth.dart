import 'package:firebase_auth/firebase_auth.dart';
import 'package:fypproject/models/uSer.dart';

import 'database.dart';


class authenticate {
  final FirebaseAuth _auth = FirebaseAuth.instance; // creating an Instance

  //create user in based on User
  uSer _userFromfirebaseUser(User user) {
    return user != null ? uSer(uid: user.uid) : null;
  }

//auth change user stream
  Stream<uSer> get people {
    return _auth.authStateChanges().map(_userFromfirebaseUser);
  }

  //signin anonymously
  Future anonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromfirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //signin with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromfirebaseUser(
          user); //convert firebase user into our create user
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;

      //create a new document for the user with uid
      await database(uId: user.uid).updateUserData('0', 'name', 100);

      return _userFromfirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //logout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}