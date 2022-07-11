library flipper_models;

import 'package:isar/isar.dart';
part 'counter.g.dart';

@Collection()
class Counter {
  Counter({
    this.id,
  });
  Id? id = Isar.autoIncrement;
  late int businessId;
  late int branchId;
  late String receiptType;
  late int totRcptNo;
  late int curRcptNo;

  Map<String, dynamic> toJson() => {
        "id": id.toString(),
        "businessId": businessId,
        "receiptType": receiptType,
        "branchId": branchId,
        "totRcptNo": totRcptNo,
        "curRcptNo": curRcptNo,
      };
}
