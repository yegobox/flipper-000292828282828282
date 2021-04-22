import 'product.dart';
import 'package:flipper_services/proxy.dart';

final time = DateTime.now();
final String userid = ProxyService.box.read(key: 'userId');
final productMock = new Product(
    id: "",
    draft: true,
    currentUpdate: true,
    taxId: "",
    imageLocal: false,
    businessId: "",
    createdAt: time,
    name: "temp",
    description: "L",
    active: true,
    hasPicture: false,
    table: "products",
    color: "#e74c3c",
    supplierId: "XXX",
    categoryId: "XXX",
    unit: "kg",
    channels: [
      userid
    ],
    allVariants: [
      AllVariant(
          id: "",
          name: "Regular",
          sku: "sku",
          retailPrice: 0,
          canTrackingStock: false,
          supplyPrice: 0,
          productName: "",
          currentStock: 0,
          unit: "kg",
          productId: "",
          stockId: "",
          table: "variants",
          channels: [userid])
    ]);
