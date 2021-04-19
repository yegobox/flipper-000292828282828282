// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.channels,
      required this.active,
      required this.taxId,
      required this.hasPicture,
      required this.table,
      required this.color,
      required this.businessId,
      required this.supplierId,
      required this.categoryId,
      required this.createdAt,
      required this.unit,
      required this.allVariants,
      required this.draft,
      required this.imageLocal,
      required this.currentUpdate,
      this.imageUrl});

  String id;
  String name;
  String description;
  List<String> channels;
  bool active;
  dynamic taxId;
  bool hasPicture;
  String table;
  String color;
  String businessId;
  dynamic supplierId;
  String categoryId;
  DateTime createdAt;
  String unit;
  List<AllVariant> allVariants;
  bool draft;
  bool imageLocal;
  bool currentUpdate;
  String? imageUrl;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        channels: List<String>.from(json["channels"].map((x) => x)),
        active: json["active"],
        taxId: json["taxId"],
        hasPicture: json["hasPicture"],
        table: json["table"],
        color: json["color"],
        businessId: json["businessId"],
        supplierId: json["supplierId"],
        categoryId: json["categoryId"],
        createdAt: DateTime.parse(json["createdAt"]),
        unit: json["unit"],
        allVariants: List<AllVariant>.from(
            json["allVariants"].map((x) => AllVariant.fromJson(x))),
        draft: json["draft"],
        imageLocal: json["imageLocal"],
        currentUpdate: json["currentUpdate"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "channels": List<dynamic>.from(channels.map((x) => x)),
        "active": active,
        "taxId": taxId,
        "hasPicture": hasPicture,
        "table": table,
        "color": color,
        "businessId": businessId,
        "supplierId": supplierId,
        "categoryId": categoryId,
        "createdAt": createdAt.toIso8601String(),
        "unit": unit,
        "allVariants": List<dynamic>.from(allVariants.map((x) => x.toJson())),
        "draft": draft,
        "imageLocal": imageLocal,
        "currentUpdate": currentUpdate,
        "imageUrl": imageUrl,
      };
}

class AllVariant {
  AllVariant({
    required this.id,
    required this.name,
    required this.sku,
    required this.productId,
    required this.unit,
    required this.table,
    required this.channels,
    required this.productName,
    required this.currentStock,
    required this.supplyPrice,
    required this.retailPrice,
    required this.canTrackingStock,
    required this.stockId,
  });

  String id;
  String name;
  String sku;
  String productId;
  String unit;
  String table;
  List<String> channels;
  dynamic productName;
  double currentStock;
  double supplyPrice;
  double retailPrice;
  bool canTrackingStock;
  String stockId;

  factory AllVariant.fromJson(Map<String, dynamic> json) => AllVariant(
        id: json["id"],
        name: json["name"],
        sku: json["sku"],
        productId: json["productId"],
        unit: json["unit"],
        table: json["table"],
        channels: List<String>.from(json["channels"].map((x) => x)),
        productName: json["productName"],
        currentStock: json["currentStock"],
        supplyPrice: json["supplyPrice"],
        retailPrice: json["retailPrice"],
        canTrackingStock: json["canTrackingStock"],
        stockId: json["stockId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sku": sku,
        "productId": productId,
        "unit": unit,
        "table": table,
        "channels": List<dynamic>.from(channels.map((x) => x)),
        "productName": productName,
        "currentStock": currentStock,
        "supplyPrice": supplyPrice,
        "retailPrice": retailPrice,
        "canTrackingStock": canTrackingStock,
        "stockId": stockId,
      };
}
