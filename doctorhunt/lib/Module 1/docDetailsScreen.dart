import 'package:flutter/material.dart';

import '../main.dart';

class Docdetailsscreen extends StatefulWidget {
  const Docdetailsscreen({super.key});

  @override
  State<Docdetailsscreen> createState() => _DocdetailsscreenState();
}

class _DocdetailsscreenState extends State<Docdetailsscreen> {
  List services = [
    "Patient care should be the number one priority.",
    "If you run your practiceyou know how frustrating.",
    "That’s why some of appointment reminder system."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                )),
          )
        ],
        title: const Text("Doctor Details"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
          child: Container(
            height: mq.height * 0.025,
            width: mq.width * 0.025,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: mq.height,
            width: mq.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.shade100,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.green.shade100
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Container(
                        width: mq.width * 0.9,
                        height: mq.height * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    height: mq.height * 0.1,
                                    width: mq.width * 0.23,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/category1.jpeg"),
                                            fit: BoxFit.cover),
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 25,
                                      ),
                                      child: Text(
                                        "Dr. Pediatrician",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                    ),
                                    const Text('Specialist Cardiologist '),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.grey.shade100,
                                          ),
                                          SizedBox(
                                            width: mq.width * 0.07,
                                          ),
                                          const Text(
                                            "\$",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff0EBE7F),
                                                fontSize: 18),
                                          ),
                                          const Text("28.00/hr")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_outline)),
                                )
                              ],
                            ),
                            Container(
                              height: mq.height * 0.035,
                              width: mq.width * 0.32,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0EBE7F),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Container(
                      height: mq.height * 0.1,
                      width: mq.width * 0.76,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(0, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: mq.height * 0.075,
                              width: mq.width * 0.20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  ),
                                  Text("Running")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: mq.height * 0.075,
                              width: mq.width * 0.20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  ),
                                  Text("Ongoing")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: mq.height * 0.075,
                              width: mq.width * 0.20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "700",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  ),
                                  Text("Patients")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Services",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0, left: 15),
                        child: Row(
                          children: [
                            Text(
                              "1.",
                              style: TextStyle(
                                  color: Color(0xff0EBE7F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            Text(
                                "Patient care should be the number one priority.")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Divider(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              "2.",
                              style: TextStyle(
                                  color: Color(0xff0EBE7F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            Text(
                                "If you run your practiceyou know how frustrating.")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Divider(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              "3.",
                              style: TextStyle(
                                  color: Color(0xff0EBE7F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            Text(
                                "That’s why some of appointment reminder system.")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mq.height * 0.03,
                  ),
                  Container(
                    height: mq.height * 0.25,
                    width: mq.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: Offset(0, 3))
                        ],
                        image: const DecorationImage(
                            image: AssetImage("assets/images/map.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
