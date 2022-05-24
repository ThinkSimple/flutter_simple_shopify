import 'package:graphql/client.dart';
import '../../graphql_operations/mutations/allow_storefront_api_access.dart';
import '../../mixins/src/shopfiy_error.dart';
import '../../shopify_config.dart';

class ShopifyProduct with ShopifyError{

  ShopifyProduct._();

  static final ShopifyProduct instance = ShopifyProduct._();

  GraphQLClient? get _graphQLClient => ShopifyConfig.graphQLClient;

  Future<void> allowStoreFrontApi() async{
    final MutationOptions _options = MutationOptions(
        document: gql(allowStoreFrontApiMutation),
    );
    final QueryResult result = (await _graphQLClient!.mutate(_options));
    checkForError(result);
  }
}