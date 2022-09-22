// To parse this JSON data, do
//
//     final rxModel = rxModelFromJson(jsonString);

import 'dart:convert';

List<RxModel> rxModelFromJson(String str) => List<RxModel>.from(json.decode(str).map((x) => RxModel.fromJson(x)));

String rxModelToJson(List<RxModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RxModel {
  RxModel({
    this.hId,
    this.hName,
    this.drList,
  });

  String? hId;
  String? hName;
  List<DrList>? drList;

  factory RxModel.fromJson(Map<String, dynamic> json) => RxModel(
    hId: json["hId"] == null ? null : json["hId"],
    hName: json["hName"] == null ? null : json["hName"],
    drList: json["drList"] == null ? null : List<DrList>.from(json["drList"].map((x) => DrList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hId": hId == null ? null : hId,
    "hName": hName == null ? null : hName,
    "drList": drList == null ? null : List<dynamic>.from(drList!.map((x) => x.toJson())),
  };
}

class DrList {
  DrList({
    this.drId,
    this.drName,
    this.rxList,
  });

  String? drId;
  String? drName;
  List<RxList>? rxList;

  factory DrList.fromJson(Map<String, dynamic> json) => DrList(
    drId: json["drId"] == null ? null : json["drId"],
    drName: json["drName"] == null ? null : json["drName"],
    rxList: json["rxList"] == null ? null : List<RxList>.from(json["rxList"].map((x) => RxList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "drId": drId == null ? null : drId,
    "drName": drName == null ? null : drName,
    "rxList": rxList == null ? null : List<dynamic>.from(rxList!.map((x) => x.toJson())),
  };
}

class RxList {
  RxList({
    this.rxId,
    this.rxName,
    this.division,
    this.district,
    this.thana,
    this.performer,
    this.performerId,
  });

  String? rxId;
  String? rxName;
  String? division;
  String? district;
  String? thana;
  String? performer;
  String? performerId;

  factory RxList.fromJson(Map<String, dynamic> json) => RxList(
    rxId: json["rxId"] == null ? null : json["rxId"],
    rxName: json["rxName"] == null ? null : json["rxName"],
    division: json["division"] == null ? null : json["division"],
    district: json["district"] == null ? null : json["district"],
    thana: json["thana"] == null ? null : json["thana"],
    performer: json["performer"] == null ? null : json["performer"],
    performerId: json["performerId"] == null ? null : json["performerId"],
  );

  Map<String, dynamic> toJson() => {
    "rxId": rxId == null ? null : rxId,
    "rxName": rxName == null ? null : rxName,
    "division": division == null ? null : division,
    "district": district == null ? null : district,
    "thana": thana == null ? null : thana,
    "performer": performer == null ? null : performer,
    "performerId": performerId == null ? null : performerId,
  };
}
