import 'package:firebase_auth/firebase_auth.dart';
import 'package:petnetwork/models/user.dart';

class StateModel {
  bool isLoading;
  User firebaseUserAuth;
  UserModel user;

  StateModel({
    this.isLoading = false,
    this.firebaseUserAuth,
    this.user,
  });
}
