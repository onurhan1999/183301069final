import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterkahve/screens/Login/login_screen.dart';
import 'package:flutterkahve/screens/Signup/signup_screen.dart';
import 'package:flutterkahve/screens/Welcome/components/background.dart';
import 'package:flutterkahve/components/rounded_button.dart';
import 'package:flutterkahve/constants.dart';
import 'package:flutterkahve/screens/adminlogin/adminlogin_screen.dart';
import 'package:flutterkahve/screens/seotalep/seotalep_screen.dart';
import 'package:flutterkahve/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  changeLocale(context) async {
    if (context.locale == "en_US") {
      await context.setLocale(Locale('tr'));
    } else {
      await context.setLocale(Locale('en'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      print("User also signed in and redirected");
      print(firebaseUser);
      return SeoTalepScreen();
    }

    print("Not Authenticated");

    print(context.locale);

    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              LocaleKeys.welcome.tr(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(LocaleKeys.appname.tr()),
            SizedBox(height: size.height * 0.03),

            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: LocaleKeys.login.tr(),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: LocaleKeys.singup.tr(),
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: LocaleKeys.admin.tr(),
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AdminLoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
