import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/main.dart';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            left: mq.width * 0.01,
            bottom: mq.height * 0.02,
            top: mq.height * 0.02,
            right: mq.width * 0.01),
        height: mq.height * 0.31,
        //width: mq.width * 0.5,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Container(
          height: mq.height * 0.31,
          // width: mq.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(mq.width * 0.009),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 13,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: mq.height * 0.008,
                    bottom: mq.height * 0.008,
                    left: mq.width * 0.008,
                    right: mq.width * 0.008),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RFQ ID",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "        Vendor",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: mq.height * 0.008,
                    bottom: mq.height * 0.008,
                    left: mq.width * 0.008,
                    right: mq.width * 0.008),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "HG00387346464",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Bell Gardens",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: mq.height * 0.008,
                    bottom: mq.height * 0.008,
                    left: mq.width * 0.008,
                    right: mq.width * 0.008),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "YHDH366476246",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Bell Gardens",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.all(mq.width * 0.007),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          size: 12,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: mq.width * 0.01,
                        ),
                        const Text(
                          "Prev",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        const Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: mq.width * 0.01,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
