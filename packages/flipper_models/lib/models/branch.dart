// To parse this JSON data, do
//
//     final branch = branchFromJson(jsonString);

import 'dart:convert';

List<Branch> branchFromJson(String str) =>
    List<Branch>.from(json.decode(str).map((x) => Branch.fromJson(x)));

String branchToJson(List<Branch> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Branch {
  Branch({
    required this.id,
    required this.active,
    required this.channels,
    required this.description,
    required this.name,
    required this.businessId,
    required this.longitude,
    required this.latitude,
    required this.table,
  });

  String id;
  bool active;
  List<String> channels;
  String description;
  String name;
  String businessId;
  String longitude;
  String latitude;
  String table;

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["id"],
        active: json["active"],
        channels: List<String>.from(json["channels"].map((x) => x)),
        description: json["description"],
        name: json["name"],
        businessId: json["businessId"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        table: json["table"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "active": active,
        "channels": List<dynamic>.from(channels.map((x) => x)),
        "description": description,
        "name": name,
        "businessId": businessId,
        "longitude": longitude,
        "latitude": latitude,
        "table": table,
      };
}
