import 'package:graphql/client.dart';

mixin ShopifyError {
  void checkForError(QueryResult queryResult){
    if(queryResult.hasException)
      throw Exception(queryResult.exception.toString());
  }

  /// Checks and throws an [CheckoutCompleteException] when
  /// the [QueryResult] contains checkout errors
  /// also run [checkForError] for normal error handling
  void checkForCheckoutError(QueryResult queryResult) {
    checkForError(queryResult);

    final checkoutCompleteFreeData = queryResult.data['checkoutCompleteFree'];
    if (checkoutCompleteFreeData != null) {
      if (checkoutCompleteFreeData['checkoutUserErrors']?.isNotEmpty) {
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
