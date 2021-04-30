import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: HakkimizdaSayfam(),
  ));
}

class HakkimizdaSayfam extends StatefulWidget {
  @override
  _HakkimizdaSayfamState createState() => _HakkimizdaSayfamState();
}

class _HakkimizdaSayfamState extends State<HakkimizdaSayfam> {
  @override
  String adSoyad = '';
  String mstrNo = '';
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];
    mstrNo = data[1];
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
                  'HAKKIMIZDA',
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
                      "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301069 numaralı Onurhan KAYA tarafından 30 Nisan 2021 günü yapılmıştır.",
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
        )),
      ),
    );
  }
}
