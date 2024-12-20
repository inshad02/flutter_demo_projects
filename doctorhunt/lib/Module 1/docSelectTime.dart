import 'package:flutter/material.dart';

import '../main.dart';

class Docselecttime extends StatefulWidget {
  const Docselecttime({super.key});

  @override
  State<Docselecttime> createState() => _DocselecttimeState();
}

class _DocselecttimeState extends State<Docselecttime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Select Time"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
          child: Container(
            height: mq.height * 0.025,
            width: mq.width * 0.025,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: mq.height,
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
              Column(
                children: [
                  Center(
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: mq.height * 0.15,
                          width: mq.width * 0.94,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: Container(
                                      height: mq.height * 0.12,
                                      width: mq.width * 0.25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/finddoc1.jpeg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 28),
                                        child: Text(
                                          "Dr. Shruti Kedia",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                      const Text(
                                          "Upasana Dental Clinic, salt lake"),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade400,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade400,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade400,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade400,
                                            size: 20,
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_outline)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: mq.height * 0.09,
                            width: mq.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.transparent),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Today, 23 Feb",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                Text(
                                  "No slots available",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: mq.width * 0.04,
                          ),
                          Container(
                            height: mq.height * 0.09,
                            width: mq.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0XFF0EBE7F)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Tomorrow, 24 Feb",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Colors.white),
                                ),
                                Text(
                                  "9 slots available",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: mq.width * 0.04,
                          ),
                          Container(
                            height: mq.height * 0.09,
                            width: mq.width * 0.4,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.transparent),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Thursday, 25 Feb",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                Text(
                                  "No slots available",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    "Today, 23 Feb",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: mq.height * 0.17,
                      width: mq.width * 0.9,
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Afternoon 7 slots",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 21),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "1:00 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "1:30 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0EBE7F),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "2:00 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "2:30 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 8),
                                  child: Container(
                                    height: mq.height * 0.05,
                                    width: mq.width * 0.20,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff0ebe7f14),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Center(
                                      child: Text(
                                        "3:00 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xff0EBE7F)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 9, top: 8),
                                  child: Container(
                                    height: mq.height * 0.05,
                                    width: mq.width * 0.20,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff0ebe7f14),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Center(
                                      child: Text(
                                        "3:30 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xff0EBE7F)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 9, top: 8),
                                  child: Container(
                                    height: mq.height * 0.05,
                                    width: mq.width * 0.20,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff0ebe7f14),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Center(
                                      child: Text(
                                        "4:00 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xff0EBE7F)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: mq.height * 0.17,
                      width: mq.width * 0.9,
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Evening 5 slots",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 21),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "5:00 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "5:30 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0EBE7F),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "6:00 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 8),
                                child: Container(
                                  height: mq.height * 0.05,
                                  width: mq.width * 0.20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff0ebe7f14),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                    child: Text(
                                      "6:30 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff0EBE7F)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 8),
                                  child: Container(
                                    height: mq.height * 0.05,
                                    width: mq.width * 0.20,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff0ebe7f14),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Center(
                                      child: Text(
                                        "7:00 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xff0EBE7F)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
