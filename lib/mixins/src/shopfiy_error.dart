import 'package:graphql/client.dart';

mixin ShopifyError {
  void checkForError(QueryResult queryResult){
    if(queryResult.hasException)
      throw Exception(queryResult.exception.toString());
  }
}