// To parse this JSON data, do
//
//     final rxModel = rxModelFromJson(jsonString);

import 'dart:convert';

List<RxModel> rxModelFromJson(String str) => List<RxModel>.from(json.decode(str).map((x) => RxModel.fromJson(x)));

String rxModelToJson(List<RxModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RxModel {
  RxModel({
    required this.udHospitalId,
    required this.hosCareName,
    required this.hcpMobNo,
    required this.hcpAddress,
    required this.isSelect,
    required this.drList,
    required this.divisionName,
    required this.districtName,
    required this.thanaName,
  });

  String udHospitalId;
  String hosCareName;
  String hcpMobNo;
  String hcpAddress;
  bool isSelect;
  List<DrList> drList;
  String divisionName;
  String districtName;
  String thanaName;

  factory RxModel.fromJson(Map<String, dynamic> json) => RxModel(
    udHospitalId: json["udHospitalId"],
    hosCareName: json["hosCareName"],
    hcpMobNo: json["hcpMobNo"],
    hcpAddress: json["hcpAddress"],
    isSelect: json["isSelect"],
    drList: List<DrList>.from(json["drList"].map((x) => DrList.fromJson(x))),
    divisionName: json["divisionName"],
    districtName: json["districtName"],
    thanaName: json["thanaName"],
  );

  Map<String, dynamic> toJson() => {
    "udHospitalId": udHospitalId,
    "hosCareName": hosCareName,
    "hcpMobNo": hcpMobNo,
    "hcpAddress": hcpAddress,
    "isSelect": isSelect,
    "drList": List<dynamic>.from(drList.map((x) => x.toJson())),
    "divisionName": divisionName,
    "districtName": districtName,
    "thanaName": thanaName,
  };
}


class DrList {
  DrList({
    required this.userDhcgNo,
    required this.drName,
    required this.drDegree,
    required this.speciality,
    required this.isSelect,
    required this.rxList,
  });

  String userDhcgNo;
  String drName;
  String drDegree;
  String speciality;
  bool isSelect;
  List<RxList> rxList;

  factory DrList.fromJson(Map<String, dynamic> json) => DrList(
    userDhcgNo: json["userDHCGNo"],
    drName: json["drName"],
    drDegree: json["drDegree"],
    speciality: json["speciality"],
    isSelect: json["isSelect"],
    rxList: List<RxList>.from(json["rxList"].map((x) => RxList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "userDHCGNo": userDhcgNo,
    "drName": drName,
    "drDegree": drDegree,
    "speciality": speciality,
    "isSelect": isSelect,
    "rxList": List<dynamic>.from(rxList.map((x) => x.toJson())),
  };
}

class RxList {
  RxList({
    required this.feedBackMstId,
    required this.feedBackCreateDt,
    required this.submitDt,
    required this.userDhcgNo,
    required this.udHospitalId,
    required this.hosCareName,
    required this.totalProd,
    required this.feedbackSendBy,
    required this.drName,
    required this.hcpRegNo,
    required this.hcpMobNo,
    required this.hcpAddress,
    required this.drDegree,
    required this.speciality,
    required this.udMsRxNo,
    required this.evfcFg,
    required this.imgLink,
    required this.medDetails,
    required this.isSelect,
    required this.divisionName,
    required this.districtName,
    required this.thanaName,
    required this.performerName,
    required this.performDate,
  });

  int feedBackMstId;
  String feedBackCreateDt;
  String submitDt;
  String userDhcgNo;
  String udHospitalId;
  String hosCareName;
  int totalProd;
  String feedbackSendBy;
  String drName;
  String hcpRegNo;
  String hcpMobNo;
  String hcpAddress;
  String drDegree;
  String speciality;
  String udMsRxNo;
  int evfcFg;
  String imgLink;
  String medDetails;
  bool isSelect;
  String divisionName;
  String districtName;
  String thanaName;
  String performerName;
  String performDate;

  factory RxList.fromJson(Map<String, dynamic> json) => RxList(
    feedBackMstId: json["feedBackMstId"],
    feedBackCreateDt: json["feedBackCreateDT"],
    submitDt: json["submitDT"],
    userDhcgNo: json["userDHCGNo"],
    udHospitalId: json["udHospitalId"],
    hosCareName: json["hosCareName"],
    totalProd: json["totalProd"],
    feedbackSendBy: json["feedbackSendBy"],
    drName: json["drName"],
    hcpRegNo: json["hcpRegNo"]??'',
    hcpMobNo: json["hcpMobNo"],
    hcpAddress: json["hcpAddress"],
    drDegree: json["drDegree"],
    speciality: json["speciality"],
    udMsRxNo: json["udMsRXNo"],
    evfcFg: json["evfcFg"],
    imgLink: json["imgLink"],
    medDetails: json["medDetails"],
    isSelect: json["isSelect"],
    divisionName: json["divisionName"],
    districtName: json["districtName"],
    thanaName: json["thanaName"],
    performerName: json["performerName"],
    performDate: json["performDate"],
  );

  Map<String, dynamic> toJson() => {
    "feedBackMstId": feedBackMstId,
    "feedBackCreateDT": feedBackCreateDt,
    "submitDT": submitDt,
    "userDHCGNo": userDhcgNo,
    "udHospitalId": udHospitalId,
    "hosCareName": hosCareName,
    "totalProd": totalProd,
    "feedbackSendBy": feedbackSendBy,
    "drName": drName,
    "hcpRegNo": hcpRegNo,
    "hcpMobNo": hcpMobNo,
    "hcpAddress": hcpAddress,
    "drDegree": drDegree,
    "speciality": speciality,
    "udMsRXNo": udMsRxNo,
    "evfcFg": evfcFg,
    "imgLink": imgLink,
    "medDetails": medDetails,
    "isSelect": isSelect,
    "divisionName": divisionName,
    "districtName": districtName,
    "thanaName": thanaName,
    "performerName": performerName,
    "performDate": performDate,
  };
}
