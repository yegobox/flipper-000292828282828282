// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20241128071917_up = [
  InsertForeignKey('Stock', 'Variant', foreignKeyColumn: 'variant_Variant_brick_id', onDeleteCascade: false, onDeleteSetDefault: false)
];

const List<MigrationCommand> _migration_20241128071917_down = [
  DropColumn('variant_Variant_brick_id', onTable: 'Stock')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20241128071917',
  up: _migration_20241128071917_up,
  down: _migration_20241128071917_down,
)
class Migration20241128071917 extends Migration {
  const Migration20241128071917()
    : super(
        version: 20241128071917,
        up: _migration_20241128071917_up,
        down: _migration_20241128071917_down,
      );
}