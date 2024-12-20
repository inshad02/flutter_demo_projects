import 'package:demo/api/dataController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageApi extends StatelessWidget {
  HomePageApi({super.key});

  final controller = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Example"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Obx(() {
          return controller.loadind.isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : controller.Datalist.isEmpty
                  ? Center(
                      child: Text('no datas'),
                    )
                  : ListView.builder(
                      itemCount: controller.Datalist.length ?? 0,
                      itemBuilder: (context, index) {
                        final data = controller.Datalist[index];
                        return Card(
                            child: ListTile(
                                title: Text(data.title.toString() ?? "")));
                      });
        }),
      ),
    );
  }
}
