import 'package:objectbox/objectbox.dart';

@Entity()
class CacheEntity {
  CacheEntity({this.id = 0, this.typeName, this.dateTime});

  @Id()
  int? id;
  @Unique(onConflict: ConflictStrategy.replace)
  String? typeName;
  DateTime? dateTime;

  CacheEntity.fromJson(Map<String, dynamic> json) {
    typeName = json['type'];
    dateTime = json['dateTime'];
  }

  Map<String, dynamic> toJson() => {
        "type": typeName,
        "dateTime": dateTime,
      };
}
