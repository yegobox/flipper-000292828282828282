import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'permissions'),
)
class LPermission extends OfflineFirstWithSupabaseModel {
  @Sqlite(unique: true)
  final int id;

  String? name;
  int? userId;

  LPermission({
    required this.id,
    this.name,
    this.userId,
  });
}
