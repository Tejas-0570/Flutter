import 'package:get/get.dart';
import 'package:mad_project/utils/network_manager/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }

}