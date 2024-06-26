// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'app/data/local_db/table/table_barang.dart';
import 'app/data/local_db/table/table_category.dart';
import 'app/data/local_db/table/table_todo.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 4294970538843188417),
      name: 'TableTodo',
      lastPropertyId: const obx_int.IdUid(2, 1005277908682345647),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 5768986837955851271),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 1005277908682345647),
            name: 'title',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(2, 9143872978155690509),
      name: 'TableBarang',
      lastPropertyId: const obx_int.IdUid(4, 6079431109524543810),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 3512459619138653787),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5529495150158222460),
            name: 'name',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 1369987238490151471),
            name: 'stock',
            type: 8,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 6079431109524543810),
            name: 'categoryId',
            type: 11,
            flags: 520,
            indexId: const obx_int.IdUid(1, 7146678826005016834),
            relationTarget: 'TableCategory')
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(3, 8012282888081993201),
      name: 'TableCategory',
      lastPropertyId: const obx_int.IdUid(2, 5760870950674303323),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 156227478237577258),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5760870950674303323),
            name: 'nameCategory',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(3, 8012282888081993201),
      lastIndexId: const obx_int.IdUid(1, 7146678826005016834),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    TableTodo: obx_int.EntityDefinition<TableTodo>(
        model: _entities[0],
        toOneRelations: (TableTodo object) => [],
        toManyRelations: (TableTodo object) => {},
        getId: (TableTodo object) => object.id,
        setId: (TableTodo object, int id) {
          object.id = id;
        },
        objectToFB: (TableTodo object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          fbb.startTable(3);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, titleOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final object = TableTodo(id: idParam, title: titleParam);

          return object;
        }),
    TableBarang: obx_int.EntityDefinition<TableBarang>(
        model: _entities[1],
        toOneRelations: (TableBarang object) => [object.category],
        toManyRelations: (TableBarang object) => {},
        getId: (TableBarang object) => object.id,
        setId: (TableBarang object, int id) {
          object.id = id;
        },
        objectToFB: (TableBarang object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, nameOffset);
          fbb.addFloat64(2, object.stock);
          fbb.addInt64(3, object.category.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = TableBarang()
            ..id =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4)
            ..name = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 6, '')
            ..stock =
                const fb.Float64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.category.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.category.attach(store);
          return object;
        }),
    TableCategory: obx_int.EntityDefinition<TableCategory>(
        model: _entities[2],
        toOneRelations: (TableCategory object) => [],
        toManyRelations: (TableCategory object) => {},
        getId: (TableCategory object) => object.id,
        setId: (TableCategory object, int id) {
          object.id = id;
        },
        objectToFB: (TableCategory object, fb.Builder fbb) {
          final nameCategoryOffset = fbb.writeString(object.nameCategory);
          fbb.startTable(3);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, nameCategoryOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final nameCategoryParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, '');
          final object =
              TableCategory(id: idParam, nameCategory: nameCategoryParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [TableTodo] entity fields to define ObjectBox queries.
class TableTodo_ {
  /// see [TableTodo.id]
  static final id =
      obx.QueryIntegerProperty<TableTodo>(_entities[0].properties[0]);

  /// see [TableTodo.title]
  static final title =
      obx.QueryStringProperty<TableTodo>(_entities[0].properties[1]);
}

/// [TableBarang] entity fields to define ObjectBox queries.
class TableBarang_ {
  /// see [TableBarang.id]
  static final id =
      obx.QueryIntegerProperty<TableBarang>(_entities[1].properties[0]);

  /// see [TableBarang.name]
  static final name =
      obx.QueryStringProperty<TableBarang>(_entities[1].properties[1]);

  /// see [TableBarang.stock]
  static final stock =
      obx.QueryDoubleProperty<TableBarang>(_entities[1].properties[2]);

  /// see [TableBarang.category]
  static final category = obx.QueryRelationToOne<TableBarang, TableCategory>(
      _entities[1].properties[3]);
}

/// [TableCategory] entity fields to define ObjectBox queries.
class TableCategory_ {
  /// see [TableCategory.id]
  static final id =
      obx.QueryIntegerProperty<TableCategory>(_entities[2].properties[0]);

  /// see [TableCategory.nameCategory]
  static final nameCategory =
      obx.QueryStringProperty<TableCategory>(_entities[2].properties[1]);
}
