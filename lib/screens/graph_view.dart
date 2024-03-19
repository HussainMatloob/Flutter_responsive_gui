import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Models/data_model.dart';
import '../helper/responsive.dart';
import '../main.dart';

class graphView extends StatefulWidget {
  const graphView({super.key});

  @override
  State<graphView> createState() => _graphViewState();
}

class _graphViewState extends State<graphView> {
  @override
  List<DataModel> _list = List<DataModel>.empty(growable: true);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list.add(DataModel(key: '0', value: '2'));
    _list.add(DataModel(key: '1', value: '5'));
    _list.add(DataModel(key: '2', value: '3'));
    _list.add(DataModel(key: '3', value: '6'));
    _list.add(DataModel(key: '4', value: '8'));
    _list.add(DataModel(key: '5', value: '4'));
    _list.add(DataModel(key: '6', value: '7'));
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            margin:
                EdgeInsets.only(left: mq.width * 0.01, top: mq.height * 0.02),
            height: mq.height * 0.479,
            // width: mq.width * 0.238,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              height: mq.height * 0.479,
              //  width: mq.width * 0.238,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(mq.width * 0.007),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(
                      //     padding: EdgeInsets.only(
                      //         top: mq.height * 0.03, bottom: mq.width * 0.03)),
                      //SizedBox(width: mq.width * 0.02),
                      Text(
                        "Invoices",
                        style: TextStyle(color: Colors.white),
                      ),

                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(mq.width * 0.02),
                        height: mq.height * 0.35,
                        width: mq.width *
                            0.22, // Set the height of the chart container
                        child: BarChart(
                          BarChartData(
                            backgroundColor: Colors.black,
                            barGroups: _chartGroups(),
                            borderData: FlBorderData(
                                border: const Border(
                                    bottom: BorderSide(), left: BorderSide())),
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                                bottomTitles:
                                    AxisTitles(sideTitles: _bottomTiles),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      getTitlesWidget: (value, meta) {
                                        return Text(
                                          value.toString(),
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        );
                                      }),
                                ),
                                topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  left: mq.width * 0.007,
                  right: mq.width * 0.01,
                  top: mq.height * 0.02),
              height: mq.height * 0.479,
              //width: mq.width * 0.238,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),

              child: Container(
                  height: mq.height * 0.479,
                  //width: mq.width * 0.238,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(mq.width * 0.007),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Product",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ])),
            ),
          ),
      ],
    );
  }

  List<BarChartGroupData> _chartGroups() {
    List<BarChartGroupData> list =
        List<BarChartGroupData>.empty(growable: true);
    for (int i = 0; i < _list.length; i++) {
      list.add(BarChartGroupData(x: i, barRods: [
        BarChartRodData(
            toY: double.parse(_list[i].value!), color: Colors.deepOrange)
      ]));
    }
    return list;
  }

  SideTitles get _bottomTiles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 0:
            text = 'Mon';
            break;
          case 1:
            text = 'Tue';
            break;
          case 2:
            text = 'wed';
            break;
          case 3:
            text = 'Thr';
            break;
          case 4:
            text = 'Fri';
            break;
          case 5:
            text = 'Sat';
            break;
          case 6:
            text = 'Sun';
            break;
        }
        return Text(
          text.toString(),
          style: TextStyle(fontSize: 10, color: Colors.white),
        );
      });
}
