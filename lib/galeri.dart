import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GaleriSayfam(),
  ));
}

class GaleriSayfam extends StatefulWidget {
  @override
  _GaleriSayfamState createState() => _GaleriSayfamState();
}

class _GaleriSayfamState extends State<GaleriSayfam> {
  String adSoyad = '';
  String mstrNo = '';
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];
    mstrNo = data[1];
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
          child: SingleChildScrollView(
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
                      'GALERİ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/fabrika1.jpg',
                          width: 170,
                          height: 175,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/fabrika2.jpg',
                          width: 170,
                          height: 175,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/fabrika3.jpg',
                          width: 170,
                          height: 175,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/fabrika4.jpg',
                          width: 170,
                          height: 175,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/fabrika5.jpg',
                          width: 170,
                          height: 175,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/fabrika6.jpg',
                          width: 170,
                          height: 175,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/fabrika7.jpg',
                          width: 170,
                          height: 175,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/fabrika8.jpg',
                          width: 170,
                          height: 175,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/fabrika9.jpg',
                          width: 170,
                          height: 175,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/fabrika10.jpg',
                          width: 170,
                          height: 175,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnaSayfam(),
                            settings: RouteSettings(
                              arguments: data,
                            ),
                          ),
                        );
                      },
                      child: Text('Geri Dön'),
                    ),
                  ),
                ],
              ),
          ),
        ),
            )),
      ),
    );
  }
}
