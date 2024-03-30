import 'package:objectbox/objectbox.dart';

@Entity()
class TableCategory {
  @Id()
  int? id;
  String nameCategory;

  TableCategory({this.id, required this.nameCategory});
}
