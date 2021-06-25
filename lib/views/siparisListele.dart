import "package:flutter/material.dart";
import 'package:flutterkahve/main.dart';
import 'package:flutterkahve/models/siparislerim.dart';
import 'package:flutterkahve/services/db_utils.dart';
import 'package:flutterkahve/siparis.dart';
import 'package:google_fonts/google_fonts.dart';

DbUtils utils = DbUtils();

class ListDogs extends StatefulWidget {
  @override
  _ListDogsState createState() => _ListDogsState();
}

class _ListDogsState extends State<ListDogs> {
  List<satis> satisList = [];

  void getData() async {
    await utils.satislar().then((result) => {
      setState(() {
        satisList = result;
      })
    });
    print(satisList);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: satisList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(satisList[index].name),

                    onLongPress: () async {
                      await utils.deleteDog(satisList[index].id).then((value) => {
                        showAlert("Sipariş " + index.toString() + " Silindi",
                            "Sipariş " + index.toString() + " Silindi")
                      });
                      getData();
                    },
                  );
                },
              ),
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
    );
  }
}