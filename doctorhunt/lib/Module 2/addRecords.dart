import 'package:flutter/material.dart';

import '../main.dart';

class Addrecords extends StatefulWidget {
  const Addrecords({super.key});

  @override
  State<Addrecords> createState() => _AddrecordsState();
}

class _AddrecordsState extends State<Addrecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Add Records"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
          child: Container(
            height: mq.height * 0.025,
            width: mq.width * 0.025,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        actions: const [],
      ),
      body: Stack(
        children: [
          Container(
            height: mq.height,
            width: mq.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.shade300,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.green.shade300
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: mq.height * 0.15,
                        width: mq.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/chatPageProf4.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff0EBE7F).withOpacity(0.3)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                iconSize: 50,
                                color: const Color(0xff0EBE7F),
                              ),
                              const Text(
                                "Add more \nimages",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff0EBE7F)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: mq.height * 0.45,
                  width: mq.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            color: Colors.grey,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Record for",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              suffix: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "Type of record",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/report.png",
                              height: 50,
                              width: 50,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
