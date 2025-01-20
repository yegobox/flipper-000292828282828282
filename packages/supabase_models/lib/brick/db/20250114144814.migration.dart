// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20250114144814_up = [
  InsertColumn('amount_payable', Column.Double, onTable: 'CustomerPayments')
];

const List<MigrationCommand> _migration_20250114144814_down = [
  DropColumn('amount_payable', onTable: 'CustomerPayments')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20250114144814',
  up: _migration_20250114144814_up,
  down: _migration_20250114144814_down,
)
class Migration20250114144814 extends Migration {
  const Migration20250114144814()
    : super(
        version: 20250114144814,
        up: _migration_20250114144814_up,
        down: _migration_20250114144814_down,
      );
}