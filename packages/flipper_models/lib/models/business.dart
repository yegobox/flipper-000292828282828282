// To parse this JSON data, do
//
//     final business = businessFromJson(jsonString);

import 'dart:convert';

List<Business> businessFromJson(String str) =>
    List<Business>.from(json.decode(str).map((x) => Business.fromJson(x)));

String businessToJson(List<Business> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Business {
  Business({
    required this.id,
    required this.name,
    required this.currency,
    this.categoryId,
    this.latitude,
    this.longitude,
    required this.userId,
    this.typeId,
    this.timeZone,
    this.channels,
    this.table,
    this.country,
    this.businessUrl,
    this.hexColor,
    this.image,
    this.type,
  });

  String id;
  String name;
  String currency;
  dynamic categoryId;
  dynamic latitude;
  dynamic longitude;
  String userId;
  dynamic typeId;
  dynamic timeZone;
  dynamic channels;
  dynamic table;
  dynamic country;
  dynamic businessUrl;
  dynamic hexColor;
  dynamic image;
  dynamic type;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
        id: json["id"],
        name: json["name"],
        currency: json["currency"],
        categoryId: json["categoryId"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        userId: json["userId"],
        typeId: json["typeId"],
        timeZone: json["timeZone"],
        channels: json["channels"],
        table: json["table"],
        country: json["country"],
        businessUrl: json["businessUrl"],
        hexColor: json["hexColor"],
        image: json["image"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "currency": currency,
        "categoryId": categoryId,
        "latitude": latitude,
        "longitude": longitude,
        "userId": userId,
        "typeId": typeId,
        "timeZone": timeZone,
        "channels": channels,
        "table": table,
        "country": country,
        "businessUrl": businessUrl,
        "hexColor": hexColor,
        "image": image,
        "type": type,
      };
}
