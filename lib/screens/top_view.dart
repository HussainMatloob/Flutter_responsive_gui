import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/header_menu_.dart';
import 'package:flutter_responsive_gui/helper/responsive.dart';
import 'package:flutter_responsive_gui/main.dart';

class TopView extends StatefulWidget {
  const TopView({super.key});

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
              padding:
                  EdgeInsets.only(left: mq.width * 0.02, top: mq.height * 0.02),
              // width: mq.width * 0.6,
              height: mq.height * 0.12,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: ListView(
                shrinkWrap:
                    true, // Make the ListView take up only the space it needs
                physics: NeverScrollableScrollPhysics(),
                children: [
                  const Text(
                    "Kraya.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  HeaderMenu(),
                ],
              )),
        ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Container(
                // width: mq.width * 0.38,
                height: mq.height * 0.12,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20)),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: mq.height * 0.017, left: mq.width * 0.017),
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
            ),
          ),
      ],
    );
  }
}
