import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: ListTile(
                      title: Text("Status $index"),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
