import 'package:flutter/material.dart';

import '../main.dart';

class Doclivechatpage extends StatefulWidget {
  const Doclivechatpage({super.key});

  @override
  State<Doclivechatpage> createState() => _DoclivechatpageState();
}

class _DoclivechatpageState extends State<Doclivechatpage> {
  List<Map<String, dynamic>> Chatlist = [
    {
      "profilepic": "assets/images/chatPageProf1.jpeg",
      "title": " Everhart Tween",
      "message": "Thanks for shareing doctor"
    },
    {
      "profilepic": "assets/images/chatPageProf2.jpeg",
      "title": " Bonebrake Mash",
      "message": "They treat immune system disorders"
    },
    {
      "profilepic": "assets/images/chatPageProf3.jpeg",
      "title": " Handler Wack",
      "message": "This is the largest directory"
    },
    {
      "profilepic": "assets/images/chatPageProf4.jpeg",
      "title": " Comfort Love",
      "message": "Depending on their education"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: mq.height,
                width: mq.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/chatPageBack.jpeg",
                  ),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ]),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: mq.height * 0.05,
                                width: mq.width * 0.08,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),

                              // Spacer(),
                              CircleAvatar(
                                radius: mq.width * 0.06,
                                backgroundImage: const AssetImage(
                                    "assets/images/chatPageDp.jpeg"),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          child: ListView.builder(
                              itemCount: Chatlist.length,
                              itemBuilder: (BuildContext, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        Chatlist[index]["profilepic"]),
                                  ),
                                  title: Text(
                                    Chatlist[index]["title"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Text(Chatlist[index]["message"],
                                      style: TextStyle(
                                          color:
                                              Colors.white.withOpacity(0.6))),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: mq.height * 0.08,
                            width: mq.width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                      height: mq.height * 0.01,
                                      width: mq.width * 0.01,
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade400,
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: const Icon(Icons.message)),
                                ),
                                suffixIcon: const Icon(Icons.emoji_emotions),
                                labelText: "Add a Comment......",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
