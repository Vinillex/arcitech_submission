// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'entity/cache_entity.dart';
import 'entity/current_weather.dart';
import 'entity/five_days.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(10, 5967265838306786960),
      name: 'CurrentWeatherEntity',
      lastPropertyId: const IdUid(16, 4567753296728644973),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1521045998321065264),
            name: 'localId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3109295885269505235),
            name: 'base',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8066037856880915107),
            name: 'visibility',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8494929831893587696),
            name: 'dt',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5834279636398322800),
            name: 'timezone',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6794551201302729792),
            name: 'id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 1821034296843347965),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3240922648631537239),
            name: 'cod',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 3739783378760678104),
            name: 'dbCoordData',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 7978396985232550662),
            name: 'dbWeatherList',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 5337281515182858012),
            name: 'dbMainData',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 7015929937448119134),
            name: 'dbWindData',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 8273318974150450359),
            name: 'dbCloudsData',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 4567753296728644973),
            name: 'dbSysData',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(11, 880461513816718580),
      name: 'FiveDaysEntity',
      lastPropertyId: const IdUid(6, 9148905753032341659),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6039827187247404053),
            name: 'localId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4217780971671644518),
            name: 'cod',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1649376084115445387),
            name: 'message',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5115155883881600617),
            name: 'cnt',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3267691354639668832),
            name: 'dbCityData',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 9148905753032341659),
            name: 'dbElementList',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(14, 688986135740482920),
      name: 'CacheEntity',
      lastPropertyId: const IdUid(3, 2688094829448867107),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2500747048890415215),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7186336644404364923),
            name: 'typeName',
            type: 9,
            flags: 34848,
            indexId: const IdUid(2, 7998849877195418293)),
        ModelProperty(
            id: const IdUid(3, 2688094829448867107),
            name: 'dateTime',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(14, 688986135740482920),
      lastIndexId: const IdUid(2, 7998849877195418293),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        1438162055878866614,
        8831278159500853923,
        2126553591811808258,
        4095757963765866149,
        5317847322682422697,
        1593154413436818992,
        2185166116754218010,
        1396135852049078485,
        150680003536260018,
        3595012470908729140,
        337461509396187563
      ],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        636395571248649615,
        2391309502915107801,
        8198736862898567368,
        6434309138191173485,
        6030017313186258599,
        7289034135380633608,
        2513502815711475830,
        3870471409187104381,
        3782072434558493287,
        4573315095054095736,
        8495029878482395813,
        7667649110358320369,
        1702485458484068185,
        5562400698795642896,
        8644315755290327040,
        2780334880134389149,
        8855723759026197638,
        5662424067022898766,
        9182244965845587310,
        6775774512060162818,
        5020110958983328110,
        3463571248052676378,
        7851480873123704695,
        5515613192371953066,
        3364800523926869645,
        2127380572572583965,
        8290089070693920259,
        6691735461129800936,
        564846750174271928,
        4602378464328239201,
        8093695401905325824,
        5570584808226813257,
        3205031831393790051,
        4091809405983326211,
        8772808408682740342,
        6885332752869665927,
        8706635574834084010,
        1050226240294725498,
        4981822048997442077,
        2468666375912661963,
        5551205096057068064,
        6406934621731260669,
        5242138682756312137,
        4858312714146348396,
        3385704954873289285,
        3743302645093443391,
        4595619560048192024,
        5944310834794591057,
        7661456302852868557,
        2364650518022349204,
        956025116202555150,
        5635474276585945936,
        2019183444381132208,
        7250466511533570211,
        625767915123547922,
        5779794407168316019,
        3620459311564662034,
        6476111502868136396,
        6017553311120395829,
        3102386525232443678,
        4688026407466462883,
        6422371041188398551,
        8547526852890288031,
        430713834866107790,
        514731416892685494,
        3209784124098974972,
        4443608774584899471,
        4996915942681145327,
        7862988181566345828,
        1563824315985187894,
        1157037908003187795,
        5775731811563109615,
        4840808727410511057,
        3984045437260368043,
        4404748060520943248,
        2516578011657396970,
        7530023703202229855,
        4498487894697094429,
        6119464897391040362,
        6305742058065130900,
        3004084755429048084,
        2984201950140744754,
        126276200090837429,
        7033577601475933959,
        5393539163697200970
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    CurrentWeatherEntity: EntityDefinition<CurrentWeatherEntity>(
        model: _entities[0],
        toOneRelations: (CurrentWeatherEntity object) => [],
        toManyRelations: (CurrentWeatherEntity object) => {},
        getId: (CurrentWeatherEntity object) => object.localId,
        setId: (CurrentWeatherEntity object, int id) {
          object.localId = id;
        },
        objectToFB: (CurrentWeatherEntity object, fb.Builder fbb) {
          final baseOffset =
              object.base == null ? null : fbb.writeString(object.base!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final dbCoordDataOffset = fbb.writeString(object.dbCoordData);
          final dbWeatherListOffset = fbb.writeString(object.dbWeatherList);
          final dbMainDataOffset = fbb.writeString(object.dbMainData);
          final dbWindDataOffset = fbb.writeString(object.dbWindData);
          final dbCloudsDataOffset = fbb.writeString(object.dbCloudsData);
          final dbSysDataOffset = fbb.writeString(object.dbSysData);
          fbb.startTable(17);
          fbb.addInt64(0, object.localId ?? 0);
          fbb.addOffset(1, baseOffset);
          fbb.addInt64(2, object.visibility);
          fbb.addInt64(3, object.dt);
          fbb.addInt64(4, object.timezone);
          fbb.addInt64(5, object.id);
          fbb.addOffset(6, nameOffset);
          fbb.addInt64(7, object.cod);
          fbb.addOffset(8, dbCoordDataOffset);
          fbb.addOffset(9, dbWeatherListOffset);
          fbb.addOffset(10, dbMainDataOffset);
          fbb.addOffset(11, dbWindDataOffset);
          fbb.addOffset(13, dbCloudsDataOffset);
          fbb.addOffset(15, dbSysDataOffset);
          fbb.finish(fbb.endTable());
          return object.localId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final localIdParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final baseParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final visibilityParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final dtParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final timezoneParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 12);
          final idParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 14);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 16);
          final codParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 18);
          final object = CurrentWeatherEntity(
              localId: localIdParam,
              base: baseParam,
              visibility: visibilityParam,
              dt: dtParam,
              timezone: timezoneParam,
              id: idParam,
              name: nameParam,
              cod: codParam)
            ..dbCoordData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 20, '')
            ..dbWeatherList = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 22, '')
            ..dbMainData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 24, '')
            ..dbWindData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 26, '')
            ..dbCloudsData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 30, '')
            ..dbSysData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 34, '');

          return object;
        }),
    FiveDaysEntity: EntityDefinition<FiveDaysEntity>(
        model: _entities[1],
        toOneRelations: (FiveDaysEntity object) => [],
        toManyRelations: (FiveDaysEntity object) => {},
        getId: (FiveDaysEntity object) => object.localId,
        setId: (FiveDaysEntity object, int id) {
          object.localId = id;
        },
        objectToFB: (FiveDaysEntity object, fb.Builder fbb) {
          final codOffset =
              object.cod == null ? null : fbb.writeString(object.cod!);
          final dbCityDataOffset = fbb.writeString(object.dbCityData);
          final dbElementListOffset = fbb.writeString(object.dbElementList);
          fbb.startTable(7);
          fbb.addInt64(0, object.localId ?? 0);
          fbb.addOffset(1, codOffset);
          fbb.addInt64(2, object.message);
          fbb.addInt64(3, object.cnt);
          fbb.addOffset(4, dbCityDataOffset);
          fbb.addOffset(5, dbElementListOffset);
          fbb.finish(fbb.endTable());
          return object.localId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final localIdParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final codParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final messageParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final cntParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final object = FiveDaysEntity(
              localId: localIdParam,
              cod: codParam,
              message: messageParam,
              cnt: cntParam)
            ..dbCityData = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 12, '')
            ..dbElementList = const fb.StringReader(asciiOptimization: true)
                .vTableGet(buffer, rootOffset, 14, '');

          return object;
        }),
    CacheEntity: EntityDefinition<CacheEntity>(
        model: _entities[2],
        toOneRelations: (CacheEntity object) => [],
        toManyRelations: (CacheEntity object) => {},
        getId: (CacheEntity object) => object.id,
        setId: (CacheEntity object, int id) {
          object.id = id;
        },
        objectToFB: (CacheEntity object, fb.Builder fbb) {
          final typeNameOffset = object.typeName == null
              ? null
              : fbb.writeString(object.typeName!);
          fbb.startTable(4);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, typeNameOffset);
          fbb.addInt64(2, object.dateTime?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final dateTimeValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final idParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final typeNameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final dateTimeParam = dateTimeValue == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(dateTimeValue);
          final object = CacheEntity(
              id: idParam, typeName: typeNameParam, dateTime: dateTimeParam);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [CurrentWeatherEntity] entity fields to define ObjectBox queries.
class CurrentWeatherEntity_ {
  /// see [CurrentWeatherEntity.localId]
  static final localId =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[0]);

  /// see [CurrentWeatherEntity.base]
  static final base =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[1]);

  /// see [CurrentWeatherEntity.visibility]
  static final visibility =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[2]);

  /// see [CurrentWeatherEntity.dt]
  static final dt =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[3]);

  /// see [CurrentWeatherEntity.timezone]
  static final timezone =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[4]);

  /// see [CurrentWeatherEntity.id]
  static final id =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[5]);

  /// see [CurrentWeatherEntity.name]
  static final name =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[6]);

  /// see [CurrentWeatherEntity.cod]
  static final cod =
      QueryIntegerProperty<CurrentWeatherEntity>(_entities[0].properties[7]);

  /// see [CurrentWeatherEntity.dbCoordData]
  static final dbCoordData =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[8]);

  /// see [CurrentWeatherEntity.dbWeatherList]
  static final dbWeatherList =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[9]);

  /// see [CurrentWeatherEntity.dbMainData]
  static final dbMainData =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[10]);

  /// see [CurrentWeatherEntity.dbWindData]
  static final dbWindData =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[11]);

  /// see [CurrentWeatherEntity.dbCloudsData]
  static final dbCloudsData =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[12]);

  /// see [CurrentWeatherEntity.dbSysData]
  static final dbSysData =
      QueryStringProperty<CurrentWeatherEntity>(_entities[0].properties[13]);
}

/// [FiveDaysEntity] entity fields to define ObjectBox queries.
class FiveDaysEntity_ {
  /// see [FiveDaysEntity.localId]
  static final localId =
      QueryIntegerProperty<FiveDaysEntity>(_entities[1].properties[0]);

  /// see [FiveDaysEntity.cod]
  static final cod =
      QueryStringProperty<FiveDaysEntity>(_entities[1].properties[1]);

  /// see [FiveDaysEntity.message]
  static final message =
      QueryIntegerProperty<FiveDaysEntity>(_entities[1].properties[2]);

  /// see [FiveDaysEntity.cnt]
  static final cnt =
      QueryIntegerProperty<FiveDaysEntity>(_entities[1].properties[3]);

  /// see [FiveDaysEntity.dbCityData]
  static final dbCityData =
      QueryStringProperty<FiveDaysEntity>(_entities[1].properties[4]);

  /// see [FiveDaysEntity.dbElementList]
  static final dbElementList =
      QueryStringProperty<FiveDaysEntity>(_entities[1].properties[5]);
}

/// [CacheEntity] entity fields to define ObjectBox queries.
class CacheEntity_ {
  /// see [CacheEntity.id]
  static final id =
      QueryIntegerProperty<CacheEntity>(_entities[2].properties[0]);

  /// see [CacheEntity.typeName]
  static final typeName =
      QueryStringProperty<CacheEntity>(_entities[2].properties[1]);

  /// see [CacheEntity.dateTime]
  static final dateTime =
      QueryIntegerProperty<CacheEntity>(_entities[2].properties[2]);
}
