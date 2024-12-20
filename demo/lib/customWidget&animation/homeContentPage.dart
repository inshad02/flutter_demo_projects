import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeContents extends StatefulWidget {
  const HomeContents({super.key});

  @override
  State<HomeContents> createState() => _HomeContentsState();
}

class _HomeContentsState extends State<HomeContents> {
  List<Map<String, dynamic>> leadingList = [
    {
      "lead_img":
          "https://th.bing.com/th/id/OIP.M7Il561h_V38PLFGYbn2BAAAAA?rs=1&pid=ImgDetMain",
      "text": "Flipkart",
      "url": "https://www.flipkart.com/"
    },
    {
      "lead_img":
          "https://cdn.iconscout.com/icon/free/png-256/myntra-2709168-2249158.png",
      "text": "Myntra",
      "url": "https://www.myntra.com/"
    },
    {
      "lead_img":
          "https://i.pinimg.com/originals/01/ca/da/01cada77a0a7d326d85b7969fe26a728.jpg",
      "text": "Amazon",
      "url": "https://www.amazon.in/"
    },
    {
      "lead_img":
          "https://cdn6.aptoide.com/imgs/d/f/b/dfb0d95efaa0be188f2fc6bc3b609c55_icon.png",
      "text": "Ajio",
      "url": "https://www.ajio.com/"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  SizedBox(
                    height: 10,
                  );
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        final url = leadingList[index]["url"];
                        try {
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.network(leadingList[index]["lead_img"])),
                      title: Text(leadingList[index]["text"]),
                    ),
                  );
                },
                itemCount: leadingList.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
