library flipper_models;

import './branch.dart';
import './feature.dart';

class Subscription {
  Subscription(
      {this.id = 0,
      required this.businessName,
      required this.businessPhoneNumber,
      required this.agentPhoneNumber,
      required this.customerLifeTimeStartAt,
      required this.subscriptionEndsAt,
      required this.subscriptionStartAt,
      required this.subscriptionCode});

  int id;

  String businessName;
  String businessPhoneNumber;
  String agentPhoneNumber;
  String customerLifeTimeStartAt;
  String subscriptionStartAt;
  String subscriptionEndsAt;
  int subscriptionCode;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        id: json["id"],
        businessName: json["businessName"],
        businessPhoneNumber: json["businessPhoneNumber"],
        agentPhoneNumber: json["agentPhoneNumber"],
        customerLifeTimeStartAt: json["customerLifeTimeStartAt"],
        subscriptionStartAt: json["subscriptionStartAt"],
        subscriptionEndsAt: json["subscriptionEndsAt"],
        subscriptionCode: json["subscriptionCode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id.toString(),
        "businessName": businessName,
        "businessPhoneNumber": businessPhoneNumber,
        "agentPhoneNumber": agentPhoneNumber,
        "customerLifeTimeStartAt": customerLifeTimeStartAt,
        "subscriptionStartAt": subscriptionStartAt,
        "subscriptionEndsAt": subscriptionEndsAt,
        "subscriptionCode": subscriptionCode,
      };
}
