import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SubelerSayfam(),
  ));
}

class SubelerSayfam extends StatefulWidget {
  @override
  _SubelerSayfamState createState() => _SubelerSayfamState();
}

class _SubelerSayfamState extends State<SubelerSayfam> {
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
                    'ŞUBELERİMİZ',
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
                                  'ANKARA ŞUBEMİZ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text('Kızılay/Ankara'),
                              ),
                              Image.asset(
                                'images/sube1.jpg',
                                width: 330,
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
                                  'İSTANBUL ŞUBEMİZ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text('Kartal/İstanbul'),
                              ),
                              Image.asset(
                                'images/sube2.jpg',
                                width: 330,
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
                                  'KONYA ŞUBEMİZ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text('Selçuklu/Konya'),
                              ),
                              Image.asset(
                                'images/sube3.jpg',
                                width: 330,
                                height: 170,
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
        )),
      ),
    );
  }
}
