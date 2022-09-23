import 'package:continue_read/controllers/rx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxScreen extends StatefulWidget {
  const RxScreen({Key? key}) : super(key: key);

  @override
  State<RxScreen> createState() => _RxScreenState();
}

class _RxScreenState extends State<RxScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescription'),
      ),
      body: GetBuilder<PresController>(
          builder: (snap){
            return snap.hospitalList.isNotEmpty? ListView.builder(
              itemCount: snap.hospitalList.length,
                itemBuilder: (_,h){
                  dynamic hospital = snap.hospitalList[h].hosCareName;
                  return Card(
                    child: Column(
                      children: [
                        //start hospital
                        ListTile(
                          title: Text(hospital),
                        ),
                        //end hospital

                        //start doctor

                        ListView.builder(
                          shrinkWrap: true,
                            itemCount: snap.hospitalList[h].drList.length,
                            itemBuilder: (_,d){
                            dynamic dr = snap.hospitalList[h].drList[d];
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(dr),
                                ),
                              ],
                            );
                            }
                        )


                        //end doctor

                      ],
                    ),
                  );
                }
            ):const Center(child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}
