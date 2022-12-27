import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ClusterPageFirebaseUser {
  ClusterPageFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ClusterPageFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ClusterPageFirebaseUser> clusterPageFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ClusterPageFirebaseUser>(
        (user) => currentUser = ClusterPageFirebaseUser(user));
