import 'package:flutter/material.dart';
import 'package:flutterkahve/Screens/Login/components/background.dart';
import 'package:flutterkahve/Screens/Signup/signup_screen.dart';
import 'package:flutterkahve/components/already_have_an_account_acheck.dart';
import 'package:flutterkahve/components/rounded_button.dart';
import 'package:flutterkahve/components/rounded_input_field.dart';
import 'package:flutterkahve/components/rounded_password_field.dart';
import 'package:flutterkahve/screens/signup/signup_screen.dart';
import 'package:flutterkahve/services/auth/auth_methods.dart';
import 'package:provider/provider.dart';


class Body extends StatelessWidget {
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
              "Giriş Yap",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),

            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
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
              text: "Giriş Yap",
              press: () {
                context
                    .read<FlutterFireAuthService>()
                    .logIn(user_email, user_password, context);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.popAndPushNamed(context, "signup");
              },
            ),
          ],
        ),
      ),
    );
  }
}
