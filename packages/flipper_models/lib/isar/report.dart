library flipper_models;

import 'package:flipper_models/isar_models.dart';
import 'package:flipper_models/sync_service.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'report.g.dart';

@JsonSerializable()
@Collection()
class Report extends IJsonSerializable {
  Report(
      {required this.id,
      required this.businessId,
      required this.type,
      required this.dateGenerated});

  late String id;
  String? type;
  @Index()
  @JsonKey(includeIfNull: true)
  DateTime? dateGenerated;
  @Index()
  int businessId;

  factory Report.fromRecord(RecordModel record) =>
      Report.fromJson(record.toJson());

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReportToJson(this);
}
