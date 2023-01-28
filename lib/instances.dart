import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class S {
  static final S size = S._internal();

  factory S() {
    return size;
  }

  S._internal();

  late double vw;
  late double vh;
}

class Prefs {
  static final Prefs prefs = Prefs._internal();
  late SharedPreferences instance;

  factory Prefs() {
    return prefs;
  }

  Future init() async {
    instance = await SharedPreferences.getInstance();
  }

  Prefs._internal();

  String get token => instance.getString('token') ?? '';

  set token(String token) => instance.setString('token', token);
}
