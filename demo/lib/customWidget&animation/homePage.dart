// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/customWidget&animation/homeContentPage.dart';
import 'package:demo/customWidget&animation/profilePage.dart';
import 'package:demo/customWidget&animation/themeData.dart';
import 'package:demo/customWidget&animation/themeProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePaage extends StatefulWidget {
  const HomePaage({super.key});

  @override
  State<HomePaage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePaage> {
  // int _selectedIndex = 0;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  bool val = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hi User",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          actions: [
            Switch(
                value: val,
                onChanged: (newVal) {
                  setState(() {
                    val = newVal;
                    themeProvider.changeTheme();
                  });
                })
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Profile",
                  icon: Icon(Icons.person),
                ),
                Tab(
                  text: "Setings",
                  icon: Icon(Icons.settings),
                ),
              ]),
        ),
        body: TabBarView(children: [
          HomeContents(),
          ProfilePaage(),
          Center(
            child: Text("You are in Settings page"),
          ),
        ]),
      ),
    );
  }
}
