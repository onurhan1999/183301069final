import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: VizyonSayfam(),
  ));
}

class VizyonSayfam extends StatefulWidget {
  @override
  _VizyonSayfamState createState() => _VizyonSayfamState();
}

class _VizyonSayfamState extends State<VizyonSayfam> {

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
                        'VİZYONUMUZ',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        color: Color(0xFF8d6e63),
                        child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Kalite ve hijyenden asla ödün vermeyen, üretim ve hizmet kalitesi ile tercih edilen, müşteri memnuniyetine odaklanmış bir kuruluş olmaktır.",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
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
