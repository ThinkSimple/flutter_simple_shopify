import 'package:graphql/client.dart';

mixin ShopifyError {
  /// throws a [OperationException] if the operation was wrong
  /// throws a [ShopifyException] if shopify reports an error
  void checkForError(QueryResult queryResult, {String? key, String? errorKey}) {
    if (queryResult.hasException) throw queryResult.exception!;
    if (key != null && errorKey != null) {
      Map<String, Object?> data = queryResult.data as Map<String, Object?>;
      Map<String, dynamic>? content = data[key] as Map<String, dynamic>?;
      if (content == null) return;
      List? errors = content[errorKey] as List<dynamic>?;
      if (errors != null && errors.isNotEmpty) {
        errors.forEach((error) => print(error));
        throw ShopifyException(key, errorKey, errors: errors);
      }
    }
  }
}

/// Exception thrown when an api call fails
/// like when some items are out of stock
class ShopifyException implements Exception {
  /// The shopify operation in which the error occurred
  final String key;

  /// The type of the error
  final String errorKey;

  /// The list of errors, might contains items out of stock or other item-related
  /// errors
  final List<dynamic>? errors;

  const ShopifyException(this.key, this.errorKey, {this.errors});

  @override
  String toString() {
    return "$errorKey during $key: $errors";
  }
}
