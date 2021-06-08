// Type of Hive boxes
abstract class DatabaseBox {
  String id;
}

class NewsBox implements DatabaseBox {
  @override
  String id = "newsId";
}
