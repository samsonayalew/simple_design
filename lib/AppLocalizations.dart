import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Kuraz',
      'news': 'News',
      'myBooks': 'My Books',
      'homeText': 'Purchase or Import Books',
      'settings': 'Settings',
      'payment method': 'Payment Method',
      'store': 'Store',
      'kids store': 'Kids Store',
      'theme setting': 'Theme Dark/Light',
      'languages':'Languages',
      'Pending purchase':'Pending Purchase',
      'import': 'Import',
      'sync':'Sync',
      'sign-out':'Sign-Out',
      'one-item':'Select at least one item!',
      'my-books':'My Books',
      'events':'Events',
      'trainings':'Trainings',
      'businessInfo':'Business Info',
      'corruptionComplaint':'Corruption Complaint'
    },
    'am': {
      'title': 'ኩራዝ',
      'news': 'ዜና',
      'myBooks': 'ይእርሶ መጽእፍት',
      'homeText': 'ምንም መጽሐፍ አልገዙም ወይም መጽሐፍ አላስገብም',
      'settings': 'ማስተካከያ',
      'payment method': 'የክፍያ መንገድ',
      'store': 'የመፅሐፍ ገበያ',
      'kids store': 'የልጆች መፃሕፍት',
      'theme setting': 'ጨለማ/ብርሃን',
      'languages':'ቋንቋዎች',
      'Pending purchase':'ያላለቁ ግዚዎች',
      'import': 'መፅሐፍ አስገባ',
      'sync':'አጣምድ',
      'sign-out':'ዝጋ እና ውጣ',
      'one-item':'ቢያንስ አንድ መፅሐፍ ይምረጡ!',
      'my-books':'መፅሐፎችዎ',
      'events':'ክስተቶች',
      'trainings':'ስልጠናዎች',
      'businessInfo':'የንግድ መረጃ',
      'corruptionComplaint':'የሙስና ቅሬታ'
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get events {
    return _localizedValues[locale.languageCode]['events'];
  }

  String get trainings {
    return _localizedValues[locale.languageCode]['trainings'];
  }

  String get businessInfo {
    return _localizedValues[locale.languageCode]['businessInfo'];
  }

  String get corruptionComplaint {
    return _localizedValues[locale.languageCode]['corruptionComplaint'];
  }

  String get settings {
    return _localizedValues[locale.languageCode]['settings'];
  }

  String get news {
    return _localizedValues[locale.languageCode]['news'];
  }

  String get paymentMethod {
    return _localizedValues[locale.languageCode]['payment method'];
  }

  String get store {
    return _localizedValues[locale.languageCode]['store'];
  }

  String get kidsStore {
    return _localizedValues[locale.languageCode]['kids store'];
  }

  String get languages {
    return _localizedValues[locale.languageCode]['languages'];
  }

  String get themeSetting {
    return _localizedValues[locale.languageCode]['theme setting'];
  }

  String get pendingPurchase{
    return _localizedValues[locale.languageCode]['Pending purchase'];
  }

  String get import{
    return _localizedValues[locale.languageCode]['import'];
  }

  String get sync{
    return _localizedValues[locale.languageCode]['sync'];
  }

  String get signOut{
    return _localizedValues[locale.languageCode]['sign-out'];
  }

  String get oneItem{
    return _localizedValues[locale.languageCode]['one-item'];
  }

  String get myBooks{
    return _localizedValues[locale.languageCode]['my-books'];
  }

  String get homeText{
    return _localizedValues[locale.languageCode]['homeText'];
  }
}

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'am'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
