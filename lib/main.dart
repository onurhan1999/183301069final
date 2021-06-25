import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterkahve/screens/Welcome/welcome_screen.dart';
import 'package:flutterkahve/constants.dart';
import 'package:flutterkahve/pages/adsensesView.dart';
import 'package:flutterkahve/pages/dailydatasView.dart';
import 'package:flutterkahve/pages/domainFirmsView.dart';
import 'package:flutterkahve/pages/domainsView.dart';
import 'package:flutterkahve/pages/hostingsView.dart';
import 'package:flutterkahve/pages/settingsView.dart';
import 'package:flutterkahve/providers/domainfirms_provider.dart';
import 'package:flutterkahve/screens/adminlogin/adminlogin_screen.dart';
import 'package:flutterkahve/screens/login/login_screen.dart';
import 'package:flutterkahve/screens/seotalep/seotalep_screen.dart';
import 'package:flutterkahve/screens/signup/signup_screen.dart';
import 'package:flutterkahve/services/auth/auth_methods.dart';
import 'package:flutterkahve/services/domainfirms/firestore_domainfirms_service.dart';
import 'package:flutterkahve/translations/codegen_loader.g.dart';
import 'package:flutterkahve/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'notifiers/menu_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('tr', 'TR')],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FlutterFireAuthService>(
            create: (_) => FlutterFireAuthService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
            context.read<FlutterFireAuthService>().authStateChanges,
            initialData: null,
          ),
          ChangeNotifierProvider(create: (context) => DomainFirmsProvider()),
          StreamProvider(create: (context)=> FirestoreDomainFirmsService().getDomainFirms()),
          ChangeNotifierProvider(create: (context) => MenuDrawerNotifier()),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: LocaleKeys.appname.tr(),
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: WelcomeScreen(),
          routes: {
            "home": (_) => WelcomeScreen(),
            "signup": (_) => SignUpScreen(),
            "login": (_) => LoginScreen(),
            "seotalep": (_) => SeoTalepScreen(),
            "adminlogin": (_) => AdminLoginScreen(),
            "domainfirms": (_) => DomainFirmsView(),
            "domains": (_) => DomainsView(),
            "hostings": (_) => HostingsView(),
            "adsenses": (_) => AdsensesView(),
            "dailydatas": (_) => DailyDatasView(),
            "settings": (_) => SettingsView(),
          },
        ));
  }
}