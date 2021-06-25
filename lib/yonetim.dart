import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: YonetimSayfam(),
  ));
}

class YonetimSayfam extends StatefulWidget {
  @override
  _YonetimSayfamState createState() => _YonetimSayfamState();
}

class _YonetimSayfamState extends State<YonetimSayfam> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        'EKİBİMİZ',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          children: [
                            Card(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Michael Scott',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text('Bölge Müdürü'),
                                  ),
                                  Image.asset(
                                    'images/calisan1.jpg',
                                    width: 300,
                                    height: 200,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Dwight Schrute',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text('Bölge Müdürü Yardımcısı'),
                                  ),
                                  Image.asset(
                                    'images/calisan5.jpg',
                                    width: 300,
                                    height: 200,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Pam Beesly',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text('Resepsiyonist'),
                                  ),
                                  Image.asset(
                                    'images/calisan3.jpg',
                                    width: 700,
                                    height: 200,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Jim Halpert',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text('Satış Görevlisi'),
                                  ),
                                  Image.asset(
                                    'images/calisan2.jpg',
                                    width: 300,
                                    height: 200,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
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
