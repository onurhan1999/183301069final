import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterkahve/anasayfa.dart';

void main() {
  runApp(MaterialApp(
    home: IletisimSayfam(),
  ));
}

class IletisimSayfam extends StatefulWidget {
  @override
  _IletisimSayfamState createState() => _IletisimSayfamState();
}

class _IletisimSayfamState extends State<IletisimSayfam> {
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
                    'İLETİŞİM',
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
                        Icons.email,
                        color: Colors.yellow,
                      ),
                      title: Text(
                        'onurhankaya1999@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.yellow,
                    ),
                    title: Text(
                      '05377822888',
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
                      Icons.home,
                      color: Colors.yellow,
                    ),
                    title: Text(
                      'Gümüşpınar, Millet Cd. No:25/A, 34880 Kartal/İstanbul',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
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
                )
              ],
          ),
        ),
            )),
      ),
    );
  }
}
