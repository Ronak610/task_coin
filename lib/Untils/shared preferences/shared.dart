import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared_p
{
  shared_p._();
  static shared_p shared = shared_p._();




  Future<void> createlogin(String email,String password)
  async {
    SharedPreferences srd = await SharedPreferences.getInstance();
    srd.setString('e1',email);
    srd.setString('p1', password);
  }

  Future<Map<String, String?>> readlogin()
  async {
    SharedPreferences srd = await SharedPreferences.getInstance();
    String? email = srd.getString('e1');
    String? password=srd.getString('p1');
    return {'email':email,'password':password};
  }

  Future<void> alredylogin(boolian)
  async {
    SharedPreferences srd = await SharedPreferences.getInstance();
    srd.setBool('b1',boolian);
  }

  Future<bool?> checklogin()
  async {
    SharedPreferences srd = await SharedPreferences.getInstance();
   bool? boolian= srd.getBool('b1');
   return boolian;
  }
}