import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: girisSayfam(),
  ));
}

class girisSayfam extends StatefulWidget {
  @override
  _girisSayfamState createState() => _girisSayfamState();
}

class _girisSayfamState extends State<girisSayfam> {
  @override
  String adSoyad = '';
  String mstrNo = '';
  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  void _mstrNoKaydet(String text) {
    setState(() {
      mstrNo = text;
    });
  }

  void kontrol() {
    if ((adSoyad.length > 1) &&
        (adSoyad.length <= 20) &&
        (mstrNo.length == 9)) {
      var data = [];
      data.add(adSoyad);
      data.add(mstrNo);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnaSayfam(),
          settings: RouteSettings(
            arguments: data,
          ),
        ),
      );
    } else {}
  }

  Widget build(BuildContext context) {
    bool butonpasif = true;
    if ((mstrNo.length == 9) && (adSoyad.length > 20)) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }
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
                  'Müşteri Girişine Hoş Geldiniz...',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.brown,
                child: ListTile(
                  leading: Icon(
                    Icons.face,
                    color: Colors.white,
                  ),
                  title: TextField(
                    onChanged: (text) {
                      _adSoyadKaydet(text);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Ad Soyad...",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                color: Colors.brown,
                child: ListTile(
                  leading: Icon(
                    Icons.verified_user,
                    color: Colors.white,
                  ),
                  title: TextField(
                    onChanged: (text) {
                      _mstrNoKaydet(text);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Müşteri No...",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Center(
                    child: Text(
                  '             Müşteri No 9 Hane Olmalıdır!\nAd-Soyad Max 20 Karakterden Oluşmalıdır!',
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  onPressed: () {
                    kontrol();
                  },
                  child: Text('Giriş Yap'),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
