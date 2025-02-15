import 'package:kur_hesapla/generated/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  late final Store store;

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(docsDir.path, 'obx-db2'));
    return ObjectBox._create(store);
  }
}
