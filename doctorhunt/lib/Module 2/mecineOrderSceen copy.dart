import 'package:flutter/material.dart';

import '../main.dart';

class Medicineordersceen2 extends StatefulWidget {
  const Medicineordersceen2({super.key});

  @override
  State<Medicineordersceen2> createState() => _MedicalscreenrecordState();
}

class _MedicalscreenrecordState extends State<Medicineordersceen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Medicine Orders"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
          child: Container(
            height: mq.height * 0.025,
            width: double.infinity,
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
              ], begin: Alignment.topLeft, end: Alignment.bottomRight))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                children: [
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0.2,
                              color: Colors.grey,
                              offset: (Offset(0, 1)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(mq.width * 0.2),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/guide.png"),
                        ),
                        const Text(
                          "Guide to medicine\n order",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: (Offset(0, 4)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/presciption.png"),
                        ),
                        const Text(
                          "Prescription related \nissues",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: (Offset(0, 3)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/order.png"),
                        ),
                        const Text(
                          "Order status",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: (Offset(0, 4)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/delivery.png"),
                        ),
                        const Text(
                          "Order delivery",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: (Offset(0, 3)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/payments.png"),
                        ),
                        const Text(
                          "Payments & refunds",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: mq.height * 0.07,
                    width: mq.width * 0.03,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                              offset: (Offset(0, 4)))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: mq.height * 0.10,
                          width: mq.width * 0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xff0EBE7F).withOpacity(0.4)),
                          child: Image.asset("assets/images/return.png"),
                        ),
                        const Text(
                          "Order returns",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
