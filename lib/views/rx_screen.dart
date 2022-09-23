import 'package:continue_read/controllers/rx_controller.dart';
import 'package:continue_read/models/rx_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxScreen extends StatefulWidget {
  const RxScreen({Key? key}) : super(key: key);

  @override
  State<RxScreen> createState() => _RxScreenState();
}

class _RxScreenState extends State<RxScreen> {
  final PresController _controller = Get.put(PresController());

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
                  snap.readResponse.add(RxModel(
                      udHospitalId: snap.hospitalList[h].udHospitalId,
                      hosCareName: snap.hospitalList[h].hosCareName,
                      hcpMobNo: snap.hospitalList[h].hcpMobNo,
                      hcpAddress: snap.hospitalList[h].hcpAddress,
                      isSelect: snap.hospitalList[h].isSelect,
                      drList:List<DrList>.from(snap.hospitalList[h].drList),
                      divisionName: snap.hospitalList[h].districtName,
                      districtName: snap.hospitalList[h].districtName,
                      thanaName: snap.hospitalList[h].thanaName
                  ));
                  String hospital = snap.hospitalList[h].hosCareName;
                  return Card(
                    child: Column(
                      children: [
                        //start hospital
                        ListTile(
                          title: Text(hospital),
                          onTap: (){
                            setState((){
                              snap.readResponse[h].isSelect = !snap.readResponse[h].isSelect;
                            });
                          },
                        ),
                        //end hospital


                        //start doctor
                        snap.readResponse[h].isSelect?
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: snap.hospitalList[h].drList.length,
                            itemBuilder: (_,d){
                              String dr = snap.hospitalList[h].drList[d].drName;
                              return Column(
                                children: [
                                  //start doctor
                                  const Divider(
                                    endIndent: 8,
                                    indent: 8,
                                  ),
                                  ListTile(
                                    title: Text(dr),
                                    onTap: (){
                                      setState((){
                                        snap.hospitalList[h].drList[d].isSelect = !snap.hospitalList[h].drList[d].isSelect;
                                      });
                                    },
                                  ),
                                  //end doctor


                                  //start rx
                                  snap.hospitalList[h].drList[d].isSelect?
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snap.hospitalList[h].drList[d].rxList.length,
                                      itemBuilder: (_,r){
                                      String rx = snap.hospitalList[h].drList[d].rxList[r].udMsRxNo;
                                      return ListTile(
                                        title: Text(rx),
                                        tileColor: Colors.lightBlueAccent.shade100,
                                      );
                                      }
                                  ):const SizedBox()
                                  //end rx
                                ],
                              );
                            }
                        ):const SizedBox()

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
