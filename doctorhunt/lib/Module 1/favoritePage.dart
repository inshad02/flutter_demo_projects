import 'package:flutter/material.dart';

import '../main.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Favourite Doctors"),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: mq.height * 0.09,
                      width: mq.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: const Icon(Icons.search),
                                hintText: "Dentist  ",
                                suffixIcon: const Icon(Icons.close),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: mq.height * 0.51,
                      width: mq.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: mq.height * 0.23,
                                  width: mq.width * 0.40,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3))
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  favorite = !favorite;
                                                });
                                              },
                                              icon: Icon(
                                                favorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: favorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                              ))
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: mq.width * 0.1,
                                        backgroundImage: const AssetImage(
                                            "assets/images/popdoc1.jpeg"),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Dr. Shouey",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const Text(
                                        "Specalist Cardiology",
                                        style:
                                            TextStyle(color: Color(0xff0EBE7E)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: mq.height * 0.23,
                                  width: mq.width * 0.4,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3))
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  favorite = !favorite;
                                                });
                                              },
                                              icon: Icon(
                                                favorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: favorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                              ))
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: mq.width * 0.1,
                                        backgroundImage: const AssetImage(
                                            "assets/images/popdoc2.jpeg"),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "Dr. Christenfeld N",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const Text(
                                        "Specalist Cancer",
                                        style:
                                            TextStyle(color: Color(0xff0EBE7E)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: mq.height * 0.23,
                                  width: mq.width * 0.40,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3))
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  favorite = !favorite;
                                                });
                                              },
                                              icon: Icon(
                                                favorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: favorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                              ))
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: mq.width * 0.1,
                                        backgroundImage: const AssetImage(
                                            "assets/images/popular2.jpeg"),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Dr. Kunjimmu",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const Text(
                                        "Specalist Gynacology",
                                        style:
                                            TextStyle(color: Color(0xff0EBE7E)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: mq.height * 0.23,
                                  width: mq.width * 0.4,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3))
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  favorite = !favorite;
                                                });
                                              },
                                              icon: Icon(
                                                favorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: favorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                              ))
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: mq.width * 0.1,
                                        backgroundImage: const AssetImage(
                                            "assets/images/popular1.jpeg"),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "Dr. Manu",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const Text(
                                        "Specalist Cancer",
                                        style:
                                            TextStyle(color: Color(0xff0EBE7E)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                        TextButton(
                            onPressed: () {}, child: const Text("See All >")),
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
                          height: mq.height * 0.20,
                          width: mq.width * 0.30,
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              CircleAvatar(
                                radius: mq.width * 0.08,
                                backgroundImage: const AssetImage(
                                    "assets/images/feadoc1.jpeg"),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Dr. Crick",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
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
                          height: mq.height * 0.20,
                          width: mq.width * 0.30,
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              CircleAvatar(
                                radius: mq.width * 0.08,
                                backgroundImage: const AssetImage(
                                    "assets/images/feadoc2.jpeg"),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Dr. Strain",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
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
                          height: mq.height * 0.20,
                          width: mq.width * 0.30,
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              CircleAvatar(
                                radius: mq.width * 0.08,
                                backgroundImage: const AssetImage(
                                    "assets/images/feadoc3.jpeg"),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Dr. Lachiinet",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
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
                          height: mq.height * 0.20,
                          width: mq.width * 0.30,
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
          )
        ],
      ),
    );
  }
}
