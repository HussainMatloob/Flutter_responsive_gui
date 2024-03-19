import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/responsive.dart';
import 'package:flutter_responsive_gui/main.dart';
import 'package:pie_chart/pie_chart.dart';

class PiChartView extends StatefulWidget {
  const PiChartView({super.key});

  @override
  State<PiChartView> createState() => _PiChartViewState();
}

class _PiChartViewState extends State<PiChartView> {
  @override
  final colorList = <Color>[
    const Color(0xff4285F4),
    const Color(0xff1aa260),
    const Color(0xffde5233),
  ];
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.479,
      //width: mq.width * 0.39,
      decoration: BoxDecoration(
          color: Responsive.isMobile(context) ? Colors.grey : Colors.black),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
            )),
        child: Container(
          margin: Responsive.isMobile(context)
              ? EdgeInsets.only(left: mq.width * 0.0, top: mq.height * 0.0)
              : EdgeInsets.only(left: mq.width * 0.009, top: mq.height * 0.019),
          height: mq.height * 0.479,
          //width: mq.width * 0.38,
          decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white, width: 1)),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(mq.width * 0.01),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PieChart(
                  dataMap: {
                    "pending": double.parse('4.0'),
                    "Overdue": double.parse('7.0'),
                    "Essential": double.parse('3.0'),
                  },
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ),
                  chartRadius: Responsive.isMobile(context)
                      ? MediaQuery.of(context).size.width / 3.2
                      : MediaQuery.of(context).size.width / 18.2,
                  legendOptions: const LegendOptions(
                    legendPosition: LegendPosition.left,
                  ),
                  animationDuration: const Duration(milliseconds: 1200),
                  chartType: ChartType.ring,
                  colorList: colorList,
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.only(
                    left: mq.width * 0.01, right: mq.width * 0.01),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Text(
                        "Pending",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      trailing: Text("\$145",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      leading: Text(
                        "Overdue",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      trailing: Text("\$245",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      leading: Text(
                        "Essentials",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      trailing: Text("\$145",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
