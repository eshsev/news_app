import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  LocaleProvider() {
    setLocale();
  }

  void setLocale({String? locale}) async {
    final pref = await SharedPreferences.getInstance();
    _locale = Locale(pref.getString('lang').toString());
    notifyListeners();
  }
}
