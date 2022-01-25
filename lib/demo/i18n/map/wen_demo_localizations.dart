import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WenDemoLocalizations {
  final Locale locale;

  WenDemoLocalizations(this.locale);

  static WenDemoLocalizations of(BuildContext context){
    return Localizations.of<WenDemoLocalizations>(
        context,
        WenDemoLocalizations
    );
  }

  static Map<String,Map<String,String>> _localized={
    'en':{
      'title':'hello',
    },
    'zh':{
      'title':'您好',
    },
  };

  String get title{
    return _localized[locale.languageCode]['title'];
  }
}

class WenDemoLocalizationsDelegate extends LocalizationsDelegate<WenDemoLocalizations>{
  WenDemoLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<WenDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<WenDemoLocalizations>(
       WenDemoLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<WenDemoLocalizations> old) {
    return false;
  }


}
