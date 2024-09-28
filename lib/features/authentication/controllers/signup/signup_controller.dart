import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mad_project/data/repositories/authentication_repository.dart';
import 'package:mad_project/data/repositories/user_repository.dart';
import 'package:mad_project/features/authentication/screens/signup_widgets/verify_email.dart';
import 'package:mad_project/utils/popups/full_screen_loader.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/network_manager/network_manager.dart';
import '../../../../utils/popups/loaders.dart';
import '../../../personalization/models/user_model.dart';


class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();



  ///Signup
  void signup() async{
  try{
    //Start Loading
    MyFullScreenLoader.openLoadingDialog('Processing your information...', MyImages.shoeImage4);


    //Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) return;



    //Form Validation
    if (!signupFormKey.currentState!.validate()) return;



    //Privacy Policy
    if (!privacyPolicy.value){
      MyLoader.warningSnackBar(title: 'Accept Privacy Policy', message: 'If you want to create account please accept the privacy policy');
      return;
    }


    //Register User in the Firebase & Save user data in firebase
    final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());


    //Save Authenticate User data in the firebase
    final newUser = UserModel(
      id: userCredential.user!.uid,
      firstName: firstName.text.trim(),
      lastName: lastName.text.trim(),
      username: userName.text.trim(),
      email: email.text.trim(),
      phoneNumber: phoneNumber.text.trim(),
      profilePicture: '',
    );

    final userRepository = Get.put(UserRepository());
    await userRepository.saveUserRecord(newUser);

    // Remove Loader
    MyFullScreenLoader.stopLoading();

    //Show success message
    MyLoader.successSnackBar(title: 'Congratulations', message: 'Your account has been created ! Continue to verify email');


    //Move to verify E-mail Screen
    Get.to(() => const VerifyEmailScreen());

  }catch (e){
    //show same Generic Error to the user
    MyLoader.errorSnackBar(title: 'oh Snap!', message: e.toString());
  }
  finally{
    //Remove Loader
    MyFullScreenLoader.stopLoading();
  }
}



}
