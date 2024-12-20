// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/chatApp/chatsPage.dart';
import 'package:demo/chatApp/statusPage.dart';
import 'package:flutter/material.dart';

class HomePageChat extends StatefulWidget {
  const HomePageChat({super.key});

  @override
  State<HomePageChat> createState() => _HomePageChatState();
}

class _HomePageChatState extends State<HomePageChat>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List navtobottom = [
    ChatPage(),
    StatusPage(),
    Center(
      child: Text("contacts"),
    ),
    Center(
      child: Text("calls"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            color: Colors.black,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              color: Colors.black),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.menu), color: Colors.black)
        ],
        // bottom: TabBar(
        //     unselectedLabelColor: Colors.green[300],
        //     controller: _tabController,
        //     labelStyle:
        //         TextStyle(color: Colors.green, fontWeight: FontWeight.w900),
        //     tabs: [
        //       Tab(
        //         text: "CALLS",
        //       ),
        //       Tab(
        //         text: "CHATS",
        //       ),
        //       Tab(
        //         text: "CONTACTS",
        //       )
        //     ]),
      ),
      body: navtobottom[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.black), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined, color: Colors.black),
              label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.black),
              label: "Communities"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.black,
              ),
              label: "Calls"),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
