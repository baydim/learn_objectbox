import 'package:learn_objectbox/app/data/local_db/table/table_category.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TableBarang {
  @Id()
  int? id;
  late String name;
  late double stock;

  final category = ToOne<TableCategory>();
}
