import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterkahve/anasayfa.dart';
import 'package:google_fonts/google_fonts.dart';

class BarChartSample3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text('Hakiki Un',
            style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.headline4)),
      ),
      body: Column(
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
              'AYLIK SATIŞ MİKTARLARI',
              style: TextStyle(fontSize: 25),
            ),
          ),
          AspectRatio(
            aspectRatio: 1.7,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              color: const Color(0xff2c4260),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 20,
                  barTouchData: BarTouchData(
                    enabled: false,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.transparent,
                      tooltipPadding: const EdgeInsets.all(0),
                      tooltipMargin: 8,
                      getTooltipItem: (
                          BarChartGroupData group,
                          int groupIndex,
                          BarChartRodData rod,
                          int rodIndex,
                          ) {
                        return BarTooltipItem(
                          rod.y.round().toString(),
                          TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                          color: Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 14),
                      margin: 20,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Özde';
                          case 1:
                            return 'Tekbaş';
                          case 2:
                            return 'Üç Martı';
                          case 3:
                            return 'Razmol';
                          case 4:
                            return 'Mix';
                          case 5:
                            return 'Kepek';
                          case 6:
                            return 'Çavdar';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(showTitles: false),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(y: 8, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(y: 10, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(y: 14, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(y: 13, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(y: 13, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(y: 10, colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                  ],
                ),
              ),
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
    );
  }
}