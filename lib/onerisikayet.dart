import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterkahve/services/file_utils.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MaterialApp(
    home: oneriPage(),
  ));
}

class oneriPage extends StatefulWidget {
  @override

  oneriPage() : super();

  final String title = "File Operations";

  _oneriPageState createState() => _oneriPageState();
}

class _oneriPageState extends State<oneriPage> {

  @override

  String fileContents = "Son Mesaj";
  final myController = TextEditingController();


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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                'Mesaj Gönder',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: myController,

              ),
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
                      FileUtils.saveToFile(myController.text);
                    },
                    child: Text('Mesaj Gönder'),
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
                      FileUtils.readFromFile().then((contents) {
                        setState(() {
                          fileContents = contents;
                        });
                      });
                    },
                    child: Text('Gönderilen Mesajı Göster'),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 15, bottom: 15, right: 80, left: 80),
                  child: Text(
                    fileContents,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )),
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
    );
  }
}
