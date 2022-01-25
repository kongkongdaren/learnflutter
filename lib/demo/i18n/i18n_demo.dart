import '/demo/i18n/map/wen_demo_localizations.dart';
import 'package:flutter/material.dart';

class I18nDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   Locale locale= Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(locale.toString()),
            Text(
              // Localizations.of(context, WenDemoLocalizations).title,
              WenDemoLocalizations.of(context).title,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
