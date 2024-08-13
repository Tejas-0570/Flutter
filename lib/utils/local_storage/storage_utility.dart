import 'package:get_storage/get_storage.dart';

class MyLocalStorage{
  static final MyLocalStorage _instance = MyLocalStorage._internal();

  factory MyLocalStorage(){
    return _instance;
  }

  MyLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<My>(String key, My value) async{
    await _storage.write(key, value);
  }

  My? readData<My>(String key){
    return _storage.read<My>(key);
  }

  Future<void> removeData(String key) async{
    await _storage.remove(key);
  }

  Future<void> clearAll() async{
    await _storage.erase();
  }


}