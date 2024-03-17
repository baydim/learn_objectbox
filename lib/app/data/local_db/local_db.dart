import 'package:learn_objectbox/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

class LocalDB {
  late final Store _store;

  LocalDB._init(this._store);

  static Future<LocalDB> init() async {
    final store = await openStore();

    return LocalDB._init(store);
  }
}

late LocalDB db;
