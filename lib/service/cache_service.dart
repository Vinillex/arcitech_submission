import 'package:arcitech_submission/entity/cache_entity.dart';
import 'package:arcitech_submission/init/object_box.dart';

import '../objectbox.g.dart';

class CacheService {
  addCache(CacheEntity entity) {
    ObjectBox.getCache().put(entity);
  }

  removeCache(int id) {
    ObjectBox.getCache().remove(id);
  }

  CacheEntity? getCache(String typeName) {
    final query = ObjectBox.getCache()
        .query(CacheEntity_.typeName.equals(typeName))
        .build();
    final list = query.find();
    query.close();
    if (list.isNotEmpty) {
      return list[0];
    } else {
      return null;
    }
  }
}
