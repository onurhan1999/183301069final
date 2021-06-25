import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterkahve/Screens/Signup/components/background.dart';
import 'package:flutterkahve/components/rounded_button.dart';
import 'package:flutterkahve/components/rounded_input_field.dart';
import 'package:flutterkahve/services/auth/auth_methods.dart';
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
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {


    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      print("User also signed in and redirected");
      print("SeoTalepScreen");
      print(firebaseUser);
    } else {
      print("firebaseUser is null");

    }

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Looged as: " + firebaseUser.email==null ? "Guest" : firebaseUser.email,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            SingleChildScrollView(
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

                                ),
                              );
                            },
                            child: Text('MESAJ GÖNDER'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
            ),

            RoundedButton(
              text: "Çıkış Yap",
              press: () {
                context
                    .read<FlutterFireAuthService>()
                    .logOut(context);
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
