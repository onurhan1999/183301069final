import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterkahve/Screens/Welcome/components/body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutterkahve/models/side_drawer.dart';
import 'package:flutterkahve/screens/seotalep/seotalep_screen.dart';

class WelcomeScreen extends StatelessWidget {
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
