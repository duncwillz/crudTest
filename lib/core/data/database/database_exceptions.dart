/// Thrown on unhandled API exceptions
class DatabaseResponseException implements Exception {
  String exceptionMessage;
  dynamic data;

  DatabaseResponseException({this.exceptionMessage, this.data});

  @override
  String toString() => '{exceptionMessage: $exceptionMessage, data: $data}';
}
