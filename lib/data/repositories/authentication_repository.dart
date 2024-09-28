 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mad_project/features/authentication/screens/login/login.dart';
import 'package:mad_project/features/authentication/screens/onboarding/onboarding.dart';

import '../../utils/exception/firebase_auth_exception.dart';
import '../../utils/exception/firebase_exception.dart';
import '../../utils/exception/format_exception.dart';
import '../../utils/exception/platform_exception.dart';


class AuthenticationRepository extends StatelessWidget {
  static AuthenticationRepository get instance => Get.find();

  ///variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  AuthenticationRepository({super.key});

  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    //Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen()) //Redirect to login page if not first time
        : Get.offAll(const OnBoardingScreen()); //Redirect to OnBoarding Screen if first time
  }


  // ----------------------------- Email & Password SignIn ---------------------------

  ///EmailAuthentication - SignIn

  ///EmailAuthentication - Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e){
      throw MyFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw MyFirebaseException (e.code).message;
    } on FormatException catch (_){
      throw const MyFormatException();
    } on PlatformException catch (e){
      throw MyPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong! Please try again';
    }
  }

  ///EmailVerification - Mail Verification

  ///ReAuthentication - ReAuthentication User

  ///EmailVerification - Forget Password


  // ------------------------- SignIn through social app like Google, Facebook ------------------------
  ///GoogleAuthentication - Google

  ///FacebookAuthentication - Facebook


  // --------------------------  Logout User -------------------
  ///LogoutUser - valid for any authentication


  // ------------------------- Delete User ------------------
  ///DeleteUser - Remove User Auth and firebase account

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

