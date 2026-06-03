import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_profile_app/Models/user_model.dart';

//create user
class UserServices {
  Future createUser(UserModel model) async {
    return await FirebaseFirestore.instance
        .collection('userCollection')
        .doc(model.docId)
        .set(model.toJson(model.docId.toString()));
  }

  //get user by id
  Stream<UserModel> getUserByID(String userID) {
    return FirebaseFirestore.instance
        .collection('userCollection')
        .doc(userID)
        .snapshots()
        .map((userModel) => UserModel.fromJson(userModel.data()!));
  }
}
