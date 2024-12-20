import 'package:flutter/material.dart';

import '../main.dart';

class Appoimentscreen1 extends StatefulWidget {
  const Appoimentscreen1({super.key});

  @override
  State<Appoimentscreen1> createState() => _Appoimentscreen1State();
}

class _Appoimentscreen1State extends State<Appoimentscreen1> {
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
        title: const Text("Appointment"),
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
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    width: mq.width * 0.9,
                    height: mq.height * 0.16,
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
                                    borderRadius: BorderRadius.circular(10)),
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
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Appointment For",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      height: mq.height * 0.07,
                      width: mq.width * 0.9,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Patient Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      height: mq.height * 0.07,
                      width: mq.width * 0.9,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Contact Number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Who is this patient?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          //addpatient
                          Container(
                            height: mq.height * 0.13,
                            width: mq.width * 0.23,
                            decoration: BoxDecoration(
                                color: const Color(0xff0ebe7f33),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Color(0xff0EBE7F),
                                      size: 35,
                                    )),
                                const Text(
                                  "Add",
                                  style: TextStyle(
                                      color: Color(0xff0EBE7F), fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          //patient1
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              height: mq.height * 0.13,
                              width: mq.width * 0.23,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0ebe7f33),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/myself.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          //patient2
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              height: mq.height * 0.13,
                              width: mq.width * 0.23,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0ebe7f33),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/mychild.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          //patient3
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              height: mq.height * 0.13,
                              width: mq.width * 0.23,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0ebe7f33),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/wife.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: InkWell(
                      child: Container(
                        height: mq.height * 0.06,
                        width: mq.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff0EBE7F)),
                        child: const Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
