import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/responsive.dart';

import '../main.dart';

class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(
          left: mq.width * 0.04,
          top: mq.height * 0.03,
          bottom: mq.height * 0.02,
          right: mq.width * 0.05),
      height: mq.height * 0.36,
      // width: mq.width * 0.39,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: Responsive.isMobile(context)
              ? const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15))
              : const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
      child: Container(
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
                mainAxisExtent: 100,
                crossAxisSpacing: 15),
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Card(
                    elevation:
                        3, // You can adjust the elevation for the card shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: mq.height * 0.02,
                        left: mq.height * 0.01,
                      ),
                      height: mq.height * 0.13,
                      width: mq.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 246, 246),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Spend"),
                            SizedBox(
                              height: mq.height * 0.01,
                            ),
                            const Text(
                              "\$124.2323",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: -8,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: mq.height * 0.09,
                          width: mq.width * 0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: const Icon(
                            Icons.percent,
                            color: Colors.white,
                            size: 12,
                          ),
                        )),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Card(
                    elevation:
                        3, // You can adjust the elevation for the card shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: mq.height * 0.02, left: mq.width * 0.01),
                      height: mq.height * 0.13,
                      width: mq.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 193, 193),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Supplier"),
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          const Text(
                            "223",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: -8,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: mq.height * 0.09,
                          width: mq.width * 0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: const Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 12,
                          ),
                        )),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Card(
                    elevation:
                        3, // You can adjust the elevation for the card shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: mq.height * 0.02, left: mq.width * 0.01),
                      height: mq.height * 0.13,
                      width: mq.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 154, 55),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Invoices"),
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          const Text(
                            "223",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: -8,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: mq.height * 0.09,
                          width: mq.width * 0.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 10,
                          ),
                        )),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Card(
                    elevation:
                        3, // You can adjust the elevation for the card shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: mq.height * 0.02, left: mq.width * 0.01),
                      height: mq.height * 0.13,
                      width: mq.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 130, 222, 240),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("PO Processed"),
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          const Text(
                            "223",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -3,
                    right: -8,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: mq.height * 0.09,
                          width: mq.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                            size: 12,
                          ),
                        )),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
