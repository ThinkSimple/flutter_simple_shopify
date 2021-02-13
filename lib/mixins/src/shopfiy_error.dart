import 'package:graphql/client.dart';

mixin ShopifyError {
  void checkForError(QueryResult queryResult, {String key, String errorKey}) {
    if (queryResult.hasException)
      throw Exception(queryResult.exception.toString());
    if (key != null && errorKey != null) {
      Map<String, Object> data = (queryResult?.data as LazyCacheMap)?.data;
      Map<String, Object> content = data[key];
      List errors = content[errorKey];
      if (errors.length != 0) {
        throw Exception(errors);
      }
    }
  }

  /// Checks and throws an [CheckoutCompleteException] when
  /// the [QueryResult] contains checkout errors
  /// also run [checkForError] for normal error handling
  void checkForCheckoutError(QueryResult queryResult) {
    checkForError(queryResult);

    final checkoutCompleteFreeData = queryResult.data['checkoutCompleteFree'];
    if (checkoutCompleteFreeData != null) {
      if (checkoutCompleteFreeData['checkoutUserErrors'] != null &&
          checkoutCompleteFreeData['checkoutUserErrors'].isNotEmpty) {
        checkoutCompleteFreeData['checkoutUserErrors'].forEach((error)=>print(error.data));
        throw CheckoutCompleteException('Error on checkoutCompleteFree', errors: checkoutCompleteFreeData['checkoutUserErrors']);
      }
    }
  }
}


/// Exception thrown when a checkout fails
/// like when some items are out of stock
class CheckoutCompleteException implements Exception {
  /// A message describing the issue
  final String message;

  /// The list of errors, might contains items out of stock or other item-related
  /// errors
  final List<dynamic> errors;

  const CheckoutCompleteException(this.message, {this.errors});
}
