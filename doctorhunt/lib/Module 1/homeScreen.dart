import 'package:doctorhunt/Module%201/docLiveChatPage.dart';
import 'package:doctorhunt/Module%201/favoritePage.dart';
import 'package:doctorhunt/Module%201/homePageContents.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int myCurrentIndex = 0;

  List pages = [
    const Homepagecontents(),
    const Favoritepage(),
    const Center(
      child: Text("Bookmark"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,

      body: pages[myCurrentIndex],

      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              selectedIconTheme: const IconThemeData(color: Colors.greenAccent),
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.grey.shade600,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey.shade600,
                    ),
                    label: "Favorite"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_book,
                      color: Colors.grey.shade600,
                    ),
                    label: "Reading"),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Doclivechatpage()));
                    },
                    child: Icon(
                      Icons.message_sharp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  label: "Chat",
                )
              ]),
        ),
      ),
    );
  }
}
