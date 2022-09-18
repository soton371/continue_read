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
    hId: json["hId"],
    hName: json["hName"],
    drList: List<DrList>.from(json["drList"].map((x) => DrList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hId": hId,
    "hName": hName,
    "drList": List<dynamic>.from(drList!.map((x) => x.toJson())),
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
    drId: json["drId"],
    drName: json["drName"],
    rxList: List<RxList>.from(json["rxList"].map((x) => RxList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "drId": drId,
    "drName": drName,
    "rxList": List<dynamic>.from(rxList!.map((x) => x.toJson())),
  };
}

class RxList {
  RxList({
    this.rxId,
    this.rxName,
  });

  String? rxId;
  String? rxName;

  factory RxList.fromJson(Map<String, dynamic> json) => RxList(
    rxId: json["rxId"],
    rxName: json["rxName"],
  );

  Map<String, dynamic> toJson() => {
    "rxId": rxId,
    "rxName": rxName,
  };
}
