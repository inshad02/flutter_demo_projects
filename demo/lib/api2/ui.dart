import 'package:demo/api2/dataController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Uipage extends StatelessWidget {
  Uipage({super.key});

  final controller = Get.put(Datacontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        leading: Icon(
          Icons.layers,
          color: Colors.white,
        ),
        title: Text(
          "Userlist.io",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.list_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return controller.getData();
        },
        child: Container(
          alignment: Alignment.center,
          child: Obx(() {
            return controller.loadind.isTrue
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.Datalist.isEmpty
                    ? Center(
                        child: Text("No Datas Found"),
                      )
                    : ListView.builder(
                        itemCount: controller.Datalist.length,
                        itemBuilder: (context, index) {
                          final data = controller.Datalist[index];
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                child: Image.network(data.image.toString()),
                              ),
                              title: Text("${data.firstName} ${data.lastName}"),
                              subtitle: Text(data.email.toString()),
                            ),
                          );
                        });
          }),
        ),
      ),
    );
  }
}
