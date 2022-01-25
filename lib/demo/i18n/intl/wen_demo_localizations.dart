import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WenDemoLocalizations {
  static WenDemoLocalizations of(BuildContext context) {
    return Localizations.of<WenDemoLocalizations>(
      context,
      WenDemoLocalizations
    );
  }

  // static Future<WenDemoLocalizations> load(Locale locale) {
  //   final String name =
  //       locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
  //
  //   final String localeName = Intl.canonicalizedLocale(name);
  //
  //   return initializeMessages(localeName).then((bool _) {
  //     Intl.defaultLocale = localeName;
  //     return WenDemoLocalizations();
  //   });
  // }
  
  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class WenDemoLocalizationsDelegate
    extends LocalizationsDelegate<WenDemoLocalizations> {
  WenDemoLocalizationsDelegate();

  @override
  Future<WenDemoLocalizations> load(Locale locale) {
    return WenDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<WenDemoLocalizations> old) {
    return false;
  }
}