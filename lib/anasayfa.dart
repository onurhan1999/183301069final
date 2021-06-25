import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterkahve/galeri.dart';
import 'package:flutterkahve/iletisim.dart';
import 'package:flutterkahve/hakkimizda.dart';
import 'package:flutterkahve/misyon.dart';
import 'package:flutterkahve/onerisikayet.dart';
import 'package:flutterkahve/satisgrafigi.dart';
import 'package:flutterkahve/siparis.dart';
import 'package:flutterkahve/subeler.dart';
import 'package:flutterkahve/urunler.dart';
import 'package:flutterkahve/vizyon.dart';
import 'package:flutterkahve/yonetim.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: AnaSayfam(),
  ));
}

class AnaSayfam extends StatefulWidget {
  @override
  _AnaSayfamState createState() => _AnaSayfamState();
}

class _AnaSayfamState extends State<AnaSayfam> {
  @override
  String adSoyad = '';
  String mstrNo = '';
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
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
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
                        'Sayın ' + adSoyad + ' Hoş Geldiniz...',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HakkimizdaSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('HAKKIMIZDA'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IletisimSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('İLETİŞİM'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UrunlerSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('ÜRÜNLER'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GaleriSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('GALERİ'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MisyonSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('MİSYONUMUZ'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VizyonSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('VİZYONUMUZ'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SubelerSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('ŞUBELERİMİZ'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YonetimSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('YÖNETİM EKİBİ'),
                          ),
                        )
                      ],
                    ),





                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BarChartSample3(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('SATIŞ GRAFİĞİ'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => siparisHome(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('SİPARİŞ'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => oneriPage(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('MESAJ GÖNDER'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YonetimSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('YÖNETİM EKİBİ'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SubelerSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('ŞUBELERİMİZ'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YonetimSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('YÖNETİM EKİBİ'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SubelerSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('ŞUBELERİMİZ'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style:
                            ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YonetimSayfam(),
                                  settings: RouteSettings(
                                    arguments: data,
                                  ),
                                ),
                              );
                            },
                            child: Text('YÖNETİM EKİBİ'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
