import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageViewModel extends ChangeNotifier{
  var _language = 'en';
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  LanguageViewModel() {
    // We load theme at the start
    SharedPreferences.getInstance().then((_prefs) {
      _language = (_prefs.getString('language') != null) ? _prefs.getString('language') : 'en';
    });
  }
  void changeLanguage(String value) async{
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('language', value);
    _language = value;
    notifyListeners();
  }

  get currentLanguage {
    SharedPreferences.getInstance().then((_prefs) {
      _language = (_prefs.getString('language') != null) ? _prefs.getString('language') : 'en';
    });
    return _language;
  }
}