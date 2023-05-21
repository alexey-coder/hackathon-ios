import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Localization {
  static late final AppLocalizations _l10n;

  static Localization shared = Localization._internal();

  static Future<void> setupLocalization() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    final preferred = widgetsBinding.window.locales;
    const supported = AppLocalizations.supportedLocales;
    final locale = basicLocaleListResolution(preferred, supported);
    _l10n = await AppLocalizations.delegate.load(locale);
  }

  Localization._internal();

  AppLocalizations get locale {
    return _l10n;
  }
}
