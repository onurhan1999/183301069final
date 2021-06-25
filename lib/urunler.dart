import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: UrunlerSayfam(),
  ));
}

class UrunlerSayfam extends StatefulWidget {
  @override
  _UrunlerSayfamState createState() => _UrunlerSayfamState();
}

class _UrunlerSayfamState extends State<UrunlerSayfam> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: Text('Hakiki Un',
              style: GoogleFonts.oswald(
                  textStyle: Theme.of(context).textTheme.headline4)),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.lime,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                    Text(
                      'Hakiki Un',
                      style: GoogleFonts.oswald(
                          textStyle: Theme.of(context).textTheme.headline3),
                    ),
                    Text(
                      "1940'dan beri hizmetinizde...",
                      style: TextStyle(fontSize: 14, color: Colors.brown),
                    ),
                    Container(
                      width: 220,
                      child: Divider(
                        height: 40,
                        color: Colors.brown,
                      ),
                    ),
                    Container(
                      child: Text(
                        'ÜRÜNLER',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('images/un.jpg'),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('images/un2.jpg'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('images/un3.jpg'),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('images/bugday.jpg'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Geri Dön'),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
