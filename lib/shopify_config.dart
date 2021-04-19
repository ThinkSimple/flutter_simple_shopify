import 'package:graphql/client.dart';

class ShopifyConfig {
  /// Your own unique access key found on your Shopify dashboard under apps -> manage private apps -> your-app-name .
  static String? _storefrontAccessToken;

  /// Your store url.
  ///
  /// eg: "shopname.myshopify.com"
  static String? _storeUrl;

  static String? get storeUrl => _storeUrl;

  /// The version of the Storefront API.
  ///
  /// Default is set to 2020-04.
  static String _storefrontApiVersion = '2020-04';

  /// Where to store the cache.
  ///
  /// Default is [InMemoryStore] which does _not_ persist to disk
  static Store? _cacheStore;

  static Store? get cacheStore => _cacheStore;

  /// Sets the config.
  ///
  /// IMPORTANT: preferably call this inside the main function or at least before instantiating other Shopify classes.
  static void setConfig(
    String storefrontAccessToken,
    String storeUrl,
    String storefrontApiVersion, {
    Store? cacheStore,
  }) {
    _storefrontAccessToken = storefrontAccessToken;
    _storeUrl = storeUrl;
    _storefrontApiVersion = storefrontApiVersion;
    _cacheStore = cacheStore;
    _graphQLClient = GraphQLClient(
      link: HttpLink(
        'https://$_storeUrl/api/$_storefrontApiVersion/graphql.json',
        defaultHeaders: {
          'X-Shopify-Storefront-Access-Token': _storefrontAccessToken!,
        },
      ),
      cache: GraphQLCache(
        store: _cacheStore,
      ),
    );
  }

  static GraphQLClient? _graphQLClient;

  /// The GraphQlClient used for communication with the Storefront API.
  static GraphQLClient? get graphQLClient => _graphQLClient;
}
