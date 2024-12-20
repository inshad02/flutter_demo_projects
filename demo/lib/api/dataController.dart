import 'package:demo/api/dataModel.dart';
import 'package:demo/api/dataService.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var Datalist = <DataModel>[].obs;
  var loadind = true.obs;


  getData() async {
    loadind.value = true;
    var datas = await DataServices().getmethod();

    try {
      if (datas != null) {
        Datalist.value = datas;
        loadind.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loadind.value = true;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
