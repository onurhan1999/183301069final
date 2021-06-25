import 'package:flutter/material.dart';
import 'package:flutterkahve/Screens/Login/login_screen.dart';
import 'package:flutterkahve/Screens/Signup/components/background.dart';
import 'package:flutterkahve/Screens/Signup/components/or_divider.dart';
import 'package:flutterkahve/Screens/Signup/components/social_icon.dart';
import 'package:flutterkahve/components/already_have_an_account_acheck.dart';
import 'package:flutterkahve/components/rounded_button.dart';
import 'package:flutterkahve/components/rounded_input_field.dart';
import 'package:flutterkahve/components/rounded_password_field.dart';
import 'package:flutterkahve/services/auth/auth_methods.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kayıt Formu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),

            RoundedInputField(
              hintText: "Ad-Soyad",
              onChanged: (value) {
                user_name = value;
              },
            ),
            RoundedInputField(
              hintText: "E-mail",
              onChanged: (value) {
                user_email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                user_password = value;
              },
            ),
            RoundedButton(
                text: "Kayıt Ol",
                press: () {
                  context
                      .read<FlutterFireAuthService>()
                      .createAccount(user_name, user_email, user_password);
                }),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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


          ],
        ),
      ),
    );
  }
}
