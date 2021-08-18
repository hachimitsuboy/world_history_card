// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class WorldHistorie extends DataClass implements Insertable<WorldHistorie> {
  final String event;
  final String year;
  WorldHistorie({required this.event, required this.year});
  factory WorldHistorie.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return WorldHistorie(
      event: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}event'])!,
      year: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}year'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['event'] = Variable<String>(event);
    map['year'] = Variable<String>(year);
    return map;
  }

  WorldHistoriesCompanion toCompanion(bool nullToAbsent) {
    return WorldHistoriesCompanion(
      event: Value(event),
      year: Value(year),
    );
  }

  factory WorldHistorie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WorldHistorie(
      event: serializer.fromJson<String>(json['event']),
      year: serializer.fromJson<String>(json['year']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'event': serializer.toJson<String>(event),
      'year': serializer.toJson<String>(year),
    };
  }

  WorldHistorie copyWith({String? event, String? year}) => WorldHistorie(
        event: event ?? this.event,
        year: year ?? this.year,
      );
  @override
  String toString() {
    return (StringBuffer('WorldHistorie(')
          ..write('event: $event, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(event.hashCode, year.hashCode));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorldHistorie &&
          other.event == this.event &&
          other.year == this.year);
}

class WorldHistoriesCompanion extends UpdateCompanion<WorldHistorie> {
  final Value<String> event;
  final Value<String> year;
  const WorldHistoriesCompanion({
    this.event = const Value.absent(),
    this.year = const Value.absent(),
  });
  WorldHistoriesCompanion.insert({
    required String event,
    required String year,
  })  : event = Value(event),
        year = Value(year);
  static Insertable<WorldHistorie> custom({
    Expression<String>? event,
    Expression<String>? year,
  }) {
    return RawValuesInsertable({
      if (event != null) 'event': event,
      if (year != null) 'year': year,
    });
  }

  WorldHistoriesCompanion copyWith(
      {Value<String>? event, Value<String>? year}) {
    return WorldHistoriesCompanion(
      event: event ?? this.event,
      year: year ?? this.year,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (event.present) {
      map['event'] = Variable<String>(event.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorldHistoriesCompanion(')
          ..write('event: $event, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }
}

class $WorldHistoriesTable extends WorldHistories
    with TableInfo<$WorldHistoriesTable, WorldHistorie> {
  final GeneratedDatabase _db;
  final String? _alias;
  $WorldHistoriesTable(this._db, [this._alias]);
  final VerificationMeta _eventMeta = const VerificationMeta('event');
  late final GeneratedColumn<String?> event = GeneratedColumn<String?>(
      'event', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _yearMeta = const VerificationMeta('year');
  late final GeneratedColumn<String?> year = GeneratedColumn<String?>(
      'year', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [event, year];
  @override
  String get aliasedName => _alias ?? 'world_histories';
  @override
  String get actualTableName => 'world_histories';
  @override
  VerificationContext validateIntegrity(Insertable<WorldHistorie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('event')) {
      context.handle(
          _eventMeta, event.isAcceptableOrUnknown(data['event']!, _eventMeta));
    } else if (isInserting) {
      context.missing(_eventMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {event};
  @override
  WorldHistorie map(Map<String, dynamic> data, {String? tablePrefix}) {
    return WorldHistorie.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WorldHistoriesTable createAlias(String alias) {
    return $WorldHistoriesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $WorldHistoriesTable worldHistories = $WorldHistoriesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [worldHistories];
}
