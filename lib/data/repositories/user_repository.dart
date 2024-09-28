import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../features/personalization/models/user_model.dart';
import '../../utils/exception/firebase_exception.dart';
import '../../utils/exception/format_exception.dart';
import '../../utils/exception/platform_exception.dart';


class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firebase
  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e){
      throw MyFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw const MyFormatException();
    } on PlatformException catch (e) {
      throw MyPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  /// Function to fetch user details based on user ID
  /// Function to update user data in Firestore.


}