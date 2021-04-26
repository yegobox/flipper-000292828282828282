// To parse this JSON data, do
//
//     final variantStock = variantStockFromJson(jsonString);

import 'dart:convert';

VariantStock svariantStockFromJson(String str) =>
    VariantStock.fromJson(json.decode(str));
String svariantStockToJson(VariantStock data) => json.encode(data.toJson());

List<VariantStock> variantStockFromJson(String str) => List<VariantStock>.from(
    json.decode(str).map((x) => VariantStock.fromJson(x)));

String variantStockToJson(List<VariantStock> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VariantStock {
  VariantStock({
    required this.id,
    this.canTrackingStock,
    required this.retailPrice,
    required this.productName,
    this.variantName,
    required this.unit,
    required this.sku,
    required this.branchId,
    required this.lowStock,
    required this.currentStock,
    required this.variantId,
    required this.taxName,
    required this.taxPercentage,
    required this.value,
  });

  String id;
  bool? canTrackingStock;
  double retailPrice;
  String productName;
  String? variantName;
  String unit;
  String sku;
  String branchId;
  double lowStock;
  double currentStock;
  String variantId;
  String taxName;
  double taxPercentage;
  double value;

  factory VariantStock.fromJson(Map<String, dynamic> json) => VariantStock(
        id: json["id"],
        canTrackingStock:
            json["canTrackingStock"] == null ? false : json["canTrackingStock"],
        retailPrice: json["retailPrice"],
        productName: json["productName"],
        variantName: json["variantName"] == null ? null : json["variantName"],
        unit: json["unit"],
        sku: json["sku"],
        branchId: json["branchId"],
        lowStock: json["lowStock"],
        currentStock: json["currentStock"],
        variantId: json["variantId"],
        taxName: json["taxName"],
        taxPercentage: json["taxPercentage"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "canTrackingStock": canTrackingStock == null ? false : canTrackingStock,
        "retailPrice": retailPrice,
        "productName": productName,
        "variantName": variantName == null ? '' : variantName,
        "unit": unit,
        "sku": sku,
        "branchId": branchId,
        "lowStock": lowStock,
        "currentStock": currentStock,
        "variantId": variantId,
        "taxName": taxName,
        "taxPercentage": taxPercentage,
        "value": value,
      };
}
