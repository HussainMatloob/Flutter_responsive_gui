import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/header_menu_.dart';
import 'package:flutter_responsive_gui/screens/Table_view.dart';
import 'package:flutter_responsive_gui/screens/cards_view.dart';
import 'package:flutter_responsive_gui/screens/graph_view.dart';
import 'package:flutter_responsive_gui/screens/pichat_view.dart';
import 'package:flutter_responsive_gui/screens/side_view.dart';
import 'package:flutter_responsive_gui/screens/top_view.dart';
import 'package:get/get.dart';

import '../controller/menu_app_controller.dart';
import '../helper/responsive.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MenuAppController menuAppController = Get.put(MenuAppController());
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: Responsive.isMobile(context)
            ? AppBar(
                backgroundColor: Colors.black,
                title: const Text(
                  "Kraya.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                leading: HeaderMenu(),
              )
            : null,
        key: menuAppController.scaffoldKey,
        drawer: SideView(),
        //backgroundColor: Colors.grey,

        bottomNavigationBar: Responsive.isMobile(context)
            ? Container(
                decoration: BoxDecoration(
                    color: Responsive.isMobile(context)
                        ? Colors.grey
                        : Colors.black),
                child: Container(
                  // width: mq.width * 0.38,
                  height: mq.height * 0.12,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.message_sharp,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.play_circle_outline_outlined,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              )
            : null,

        body: Container(
          padding: EdgeInsets.all(mq.width * 0.009),
          color: Colors.grey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //This is Top View class
                if (!Responsive.isMobile(context)) const TopView(),
                Row(
                  children: [
                    //This is Side View Class
                    if (Responsive.isDesktop(context)) SideView(),

                    Expanded(
                      child: Container(
                        height: mq.height * 0.839,
                        //width: mq.width * 0.5,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Column(children: [
                          //This is Graph view class (Row)
                          graphView(),
                          //This is table view Class (Container)
                          TableView(),
                        ]),
                      ),
                    ),

                    if (!Responsive.isMobile(context))
                      const Expanded(
                        child: Column(
                          children: [
                            //This is Cards View Class (Container)
                            CardsView(),
                            //This is PiChart View Class (Container)
                            PiChartView(),
                          ],
                        ),
                      )
                  ],
                ),

                if (Responsive.isMobile(context)) CardsView(),
                if (Responsive.isMobile(context)) PiChartView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
