import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class WorldHistories extends Table {
  TextColumn get event => text()();

  TextColumn get year => text()();

  @override
  // TODO: implement primaryKey
  Set<Column>? get primaryKey => {event};
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'worldHistories.db'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [WorldHistories])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //ADD
  Future addHistory(WorldHistorie worldHistory) =>
      into(worldHistories).insert(worldHistory);

  //READ

  Future<List<WorldHistorie>> get allHistories => select(worldHistories).get();

  //UPDATE
  Future updateHistory(WorldHistorie worldHistory) =>
      update(worldHistories).replace(worldHistory);

  //DELETE
  Future deleteHistory(WorldHistorie worldHistory) => (delete(worldHistories)
        ..where((tbl) => tbl.event.equals(worldHistory.event)))
      .go();
}
