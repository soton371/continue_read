import 'package:continue_read/controllers/rx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxScreen extends StatefulWidget {
  const RxScreen({Key? key}) : super(key: key);

  @override
  State<RxScreen> createState() => _RxScreenState();
}

class _RxScreenState extends State<RxScreen> {
  final PresController _controller=Get.put(PresController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescription'),
      ),
      body: GetBuilder<PresController>(
          builder: (snap){
            return snap.responseList.isNotEmpty? ListView.builder(
              itemCount: snap.responseList.length,
                itemBuilder: (_,h){
                  var data = snap.responseList;
                  return ListTile(
                    title: Text(data[h].hName.toString()),
                  );
                }
            ):const Center(child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}
