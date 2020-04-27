import 'package:graphql/client.dart';

class ShopifyConfig {

  static String _storefrontAccessToken;
  static String _storeUrl;
  static String _storefrontApiVersion = '2020-04';

  static void setConfig(String storefrontAccessToken, String storeUrl, String storefrontApiVersion){
    _storefrontAccessToken ??= storefrontAccessToken;
    _storeUrl ??= storeUrl;
    _storefrontApiVersion = storefrontApiVersion != null ? storefrontApiVersion : _storefrontApiVersion;
    print('configs set');
  }

  static final GraphQLClient graphQLClient = GraphQLClient(
    link: HttpLink(
        headers: {'X-Shopify-Storefront-Access-Token':'$_storefrontAccessToken'},
        uri: 'https://$_storeUrl/api/$_storefrontApiVersion/graphql.json'
    ),
    cache: NormalizedInMemoryCache(
      dataIdFromObject: typenameDataIdFromObject,
    ),
  );

}