import 'package:flutter/material.dart';
import 'package:flutterkahve/Screens/Signup/components/body.dart';
import 'package:flutterkahve/models/side_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text('Hakiki Un',
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.headline4)),
      ),
      drawer: CustomSideDrawer(),
      body: Body(),
    );
  }
}
