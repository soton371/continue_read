import 'package:continue_read/models/rx_model.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;

class PresController extends GetxController{

  List<RxModel> hospitalList = []; //all data here
  List<RxModel> readResponse = []; //expand and already viewed

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  Future<void> fetchData()async{
    var jasonData = await rootBundle.loadString('assets/jsons/hospita_json.json');
    final rxModel = rxModelFromJson(jasonData);
    hospitalList = rxModel;
    update();
  }
}
