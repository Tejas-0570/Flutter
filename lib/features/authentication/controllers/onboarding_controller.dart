import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; // Rx<int> is one type to define datatype, obs = observer which change the design without using state of widget


  //update current index when page is scroll
  void updatePageIndicator(index) => currentPageIndex.value = index; //change the page index when it swipe gives to currentPageIndex variable


  //jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }


  //update current page and jump to the next page
  void nextPage(){
    if(currentPageIndex == 2){
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


  //update current index and jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}