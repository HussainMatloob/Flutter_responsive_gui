import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/responsive.dart';
import 'package:flutter_responsive_gui/main.dart';

class SideView extends StatefulWidget {
  const SideView({super.key});

  @override
  State<SideView> createState() => _SideViewState();
}

class _SideViewState extends State<SideView> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    if (Responsive.isDesktop(context)) {
      return Column(
        children: [
          if (!Responsive.isMobile(context))
            Container(
              padding: EdgeInsets.only(
                  left: mq.width * 0.03,
                  right: mq.width * 0.03,
                  bottom: mq.height * 0.04),
              height: mq.height * 0.12,
              width: mq.width * 0.1,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(15))),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(Icons.arrow_back),
              ),
            ),
          Container(
            color: Colors.black,
            child: Container(
              padding: EdgeInsets.only(
                  left: mq.width * 0.02,
                  right: mq.width * 0.02,
                  top: mq.height * 0.01,
                  bottom: mq.height * 0.01),
              height: mq.height * 0.62,
              width: mq.width * 0.1,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                  )),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Responsive.isMobile(context)
                          ? Icon(Icons.location_on_outlined,
                              color: Colors.lightGreen)
                          : Container(
                              margin: EdgeInsets.all(10),
                              height: mq.height * 0.09,
                              width: mq.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(Icons.location_on_outlined),
                            ),
                      const Icon(
                        Icons.bar_chart,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.folder_outlined,
                        color: Colors.white,
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: mq.width * 0.02, right: mq.width * 0.02),
            height: mq.height * 0.0993,
            width: mq.width * 0.1,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(15))),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=996&t=st=1710316475~exp=1710317075~hmac=4a2b1db06f620e87e7de6bff929ccfc0d329bd123ecfab4821ab6be4f90e1048'))),
            ),
          ),
        ],
      );
    } else {
      return Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    width: Responsive.isMobile(context)
                        ? mq.width * 0.2
                        : mq.width * 0.11,
                    height: Responsive.isMobile(context)
                        ? mq.height * 0.1
                        : mq.height * 0.16,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=996&t=st=1710316475~exp=1710317075~hmac=4a2b1db06f620e87e7de6bff929ccfc0d329bd123ecfab4821ab6be4f90e1048'))),
                  ),
                ],
              ),
            ),
            const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                      leading: Icon(Icons.location_on_outlined,
                          color: Colors.lightGreen)),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.folder_outlined,
                      color: Colors.white,
                    ),
                  ),
                ]),
          ],
        ),
      );
    }
  }
}
