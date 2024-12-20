import 'package:doctorhunt/main.dart';
import 'package:doctorhunt/Module%201/popularDoc.dart';
import 'package:flutter/material.dart';

class Homepagecontents extends StatefulWidget {
  const Homepagecontents({super.key});

  @override
  State<Homepagecontents> createState() => _HomepagecontentsState();
}

class _HomepagecontentsState extends State<Homepagecontents> {
  List<String> ImageList = [
    "assets/images/liveDoc1.png",
    "assets/images/liveDoc2.png",
    "assets/images/liveoc3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const Align(
                  alignment: Alignment.center,
                ),
                Container(
                  height: mq.height * 0.22,
                  width: mq.width * double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff0EBE7E), Color(0xff07D9AD)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40, left: 25),
                  child: Text(
                    "Hi Handwerker!",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60, left: 25),
                  child: Text(
                    "Find Your Doctor",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 310),
                  child: CircleAvatar(
                    radius: mq.width * 0.08,
                    backgroundImage:
                        const AssetImage("assets/images/profilepic.jpeg"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: SizedBox(
                      height: mq.height * 0.07,
                      width: mq.width * 0.9,
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Search....",
                              suffixIcon: const Icon(Icons.close),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Live Doctors",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                growable: true,
                3,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: mq.height * 0.31,
                      width: mq.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              ImageList[index],
                              fit: BoxFit.cover,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_circle_outlined,
                                  size: 40,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: mq.width * 0.045,
                  ),
                  Container(
                    height: mq.height * 0.12,
                    width: mq.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueAccent),
                    child: Image.asset("assets/images/teeth.png"),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.12,
                    width: mq.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.greenAccent),
                    child: Image.asset("assets/images/heart.png"),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.12,
                    width: mq.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orangeAccent),
                    child: Image.asset("assets/images/eye.png"),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.12,
                    width: mq.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent),
                    child: Image.asset("assets/images/body.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Doctors",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (_) => const Populardoc()));
                      },
                      child: const Text("See All >"))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: mq.height * 0.38,
                          width: mq.width * 0.45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Fillerup Grab",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Medicine Specialist",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: mq.height * 0.28,
                          width: mq.width * 0.45,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/popdoc1.jpeg",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: mq.height * 0.38,
                          width: mq.width * 0.45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Blessing",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Dentist Specialist",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: mq.height * 0.28,
                          width: mq.width * 0.45,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/popdoc2.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Feature Doctors",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See All >")),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: mq.width * 0.045,
                  ),
                  Container(
                    height: mq.height * 0.24,
                    width: mq.width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline),
                              iconSize: 20,
                            ),
                            SizedBox(
                              width: mq.width * 0.02,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Text(
                              "3.7",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: mq.width * 0.08,
                          backgroundImage:
                              const AssetImage("assets/images/feadoc1.jpeg"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            "Dr. Crick",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Text(" 25.00/ hours")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.24,
                    width: mq.width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                              ),
                              iconSize: 20,
                            ),
                            SizedBox(
                              width: mq.width * 0.02,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Text(
                              "3.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: mq.width * 0.08,
                          backgroundImage:
                              const AssetImage("assets/images/feadoc2.jpeg"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Dr. Strain",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Text(" 22.00/ hours")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.24,
                    width: mq.width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline),
                              iconSize: 20,
                            ),
                            SizedBox(
                              width: mq.width * 0.02,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const Text(
                              "2.9",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: mq.width * 0.08,
                          backgroundImage:
                              const AssetImage("assets/images/feadoc3.jpeg"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Dr. Lachiinet",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Text(" 29.00/ hours")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: mq.width * 0.030,
                  ),
                  Container(
                    height: mq.height * 0.24,
                    width: mq.width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
