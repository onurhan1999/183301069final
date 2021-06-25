import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutterkahve/anasayfa.dart';
import 'package:flutterkahve/views/siparisListele.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'models/siparislerim.dart';
import 'package:flutterkahve/services/db_utils.dart';

DbUtils utils = DbUtils();

void main() {
  runApp(siparis());
}

class siparis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HAKİKİ UN SİPARİŞ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: siparisHome(),
    );
  }
}

class siparisHome extends StatefulWidget {
  @override
  _siparisHomeState createState() => _siparisHomeState();
}

class _siparisHomeState extends State<siparisHome> {

  TextEditingController kopekIdController = TextEditingController();
  TextEditingController kopekAdController = TextEditingController();
  TextEditingController kopekYasController = TextEditingController();

  Future<Database> database;

  List<satis> dogList = [];

  _onPressedUpdate() async {
    final enik = satis(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.updateDog(enik);
    dogList = await utils.satislar();
    //print(dogList);
    getData();
  }

  _onPressedAdd() async {
    final enik = satis(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.satisEkle(enik);
    dogList = await utils.satislar();
    //print(dogList);
    getData();
  }

  _deleteDogTable() {
    utils.tabloSil();
    dogList = [];
    getData();
  }

  void getData() async {
    await utils.satislar().then((result) => {
      setState(() {
        dogList = result;
      })
    });
    print(dogList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'HAKİKİ UN SİPARİŞ',
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: Text('Hakiki Un',
              style: GoogleFonts.oswald(
                  textStyle: Theme.of(context).textTheme.headline4)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                  'SİPARİŞ',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekIdController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Müşteri ID...'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekAdController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Ürün Adı...'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekYasController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Adet...'
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                      onPressed: _onPressedAdd,
                      child: Text('Sipariş Ekle'),
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
                      onPressed: _onPressedUpdate,
                      child: Text('Sipariş Güncelle'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
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
                      onPressed: _deleteDogTable,
                      child: Text('Siparişleri Temizle'),
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
                          MaterialPageRoute(builder: (context) => ListDogs()),
                        );
                      },
                      child: Text('Siparişleri Listele'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: Color(0xFF795548)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Ana Sayfaya Dön'),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text("Toplam Satış Sayısı: "+dogList.length.toString()),

            ],
          ),
        ),
      ),
    );
  }
}