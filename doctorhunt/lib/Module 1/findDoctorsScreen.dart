import 'package:flutter/material.dart';

import '../main.dart';

class Finddoctorsscreen extends StatefulWidget {
  const Finddoctorsscreen({super.key});

  @override
  State<Finddoctorsscreen> createState() => _FinddoctorsscreenState();
}

class _FinddoctorsscreenState extends State<Finddoctorsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Find Doctors"),
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
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade300,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.green.shade300
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              label: const Text("Dentist"),
                              prefixIcon: const Icon(Icons.search),
                              suffixIcon: const Icon(Icons.close)),
                        ),
                      ),
                      Container(
                        width: mq.width * 0.95,
                        height: mq.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Container(
                                  height: mq.height * 0.12,
                                  width: mq.width * 0.29,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/finddoc1.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: mq.height * 0.01,
                                ),
                                const Text(
                                  "Next Available",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "10:00",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      " AM Tomorrow",
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Dr. Shruti Kedia",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: mq.width * 0.1,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_outline))
                                    ],
                                  ),
                                  const Text(
                                    "Tooths Dentist",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  const Text("7 Years experience"),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("87%"),
                                      SizedBox(
                                        width: mq.width * 0.05,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("69 Patient Stories"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mq.height * 0.013,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Container(
                                      height: mq.height * 0.037,
                                      width: mq.width * 0.32,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.01,
                      ),
                      Container(
                        width: mq.width * 0.95,
                        height: mq.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Container(
                                  height: mq.height * 0.12,
                                  width: mq.width * 0.29,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/finddoc2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: mq.height * 0.01,
                                ),
                                const Text(
                                  "Next Available",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "12:00",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      " AM Tomorrow",
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Dr. Watamaniuk",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: mq.width * 0.1,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_outline))
                                    ],
                                  ),
                                  const Text(
                                    "Tooths Dentist",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  const Text("9 Years experience"),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("74%"),
                                      SizedBox(
                                        width: mq.width * 0.05,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("78 Patient Stories"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mq.height * 0.013,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Container(
                                      height: mq.height * 0.037,
                                      width: mq.width * 0.32,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.01,
                      ),
                      Container(
                        width: mq.width * 0.95,
                        height: mq.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Container(
                                  height: mq.height * 0.12,
                                  width: mq.width * 0.29,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/finddoc3.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: mq.height * 0.01,
                                ),
                                const Text(
                                  "Next Available",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "11:00",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      " AM Tomorrow",
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Dr. Crownover",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: mq.width * 0.1,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_outline))
                                    ],
                                  ),
                                  const Text(
                                    "Tooths Dentist",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  const Text("5 Years experience"),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("59%"),
                                      SizedBox(
                                        width: mq.width * 0.05,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("86 Patient Stories"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mq.height * 0.013,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Container(
                                      height: mq.height * 0.037,
                                      width: mq.width * 0.32,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.01,
                      ),
                      Container(
                        width: mq.width * 0.95,
                        height: mq.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Container(
                                  height: mq.height * 0.12,
                                  width: mq.width * 0.29,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/finddoc4.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: mq.height * 0.01,
                                ),
                                const Text(
                                  "Next Available",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "10:00",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      " AM Tomorrow",
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Dr. Balestra",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: mq.width * 0.1,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_outline))
                                    ],
                                  ),
                                  const Text(
                                    "Tooths Dentist",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  const Text("7 Years experience"),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("87%"),
                                      SizedBox(
                                        width: mq.width * 0.05,
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 13,
                                      ),
                                      const Text("69 Patient Stories"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mq.height * 0.013,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Container(
                                      height: mq.height * 0.037,
                                      width: mq.width * 0.32,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
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
        ),
      ),
    );
  }
}
