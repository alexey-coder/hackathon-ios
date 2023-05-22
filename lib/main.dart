import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/feed/feed_provider.dart';
import 'package:maps/screens/feed_details/feed_details_prvider.dart';
import 'package:maps/screens/splash_screen.dart';
import 'package:maps/screens/tab_controller.dart';
import 'package:maps/providers/tab_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'localization.dart';

void main() {
  setupServices();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => TabProvider()),
    ChangeNotifierProvider(create: (_) => FeedProvider()),
    ChangeNotifierProvider(create: (_) => SheetProvider()),
    ChangeNotifierProvider(create: (_) => FeedDetailsProvider())
  ], child: const App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: 'splash',
        routes: {
          'splash': (_) => const SplashScreen(),
          'tab': (_) => const MyTabController()
        },
        supportedLocales: AppLocalizations.supportedLocales);
  }
}

Future<void> setupServices() async {
  await Localization.setupLocalization();
}
