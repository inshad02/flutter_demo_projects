import 'package:demo/api2/dataModel.dart';
import 'package:demo/api2/dataService.dart';
import 'package:get/get.dart';

class Datacontroller extends GetxController {
  var Datalist = <DataModel>[].obs;
  var loadind = true.obs;

  getData() async {
    loadind.value = true;
    var datas = await DataService().getMethod();

    try {
      if (datas != null) {
        Datalist.value = datas;
        loadind.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "e");
      loadind.value = true;
      print(e.toString());
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
