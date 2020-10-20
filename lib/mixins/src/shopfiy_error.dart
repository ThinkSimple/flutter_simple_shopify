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
}
