import 'package:graphql/client.dart';

class ShopifyConfig {
  /// Your own unique access key found on your Shopify dashboard under apps -> manage private apps -> your-app-name .
  static String _storefrontAccessToken;

  /// Your store url.
  ///
  /// eg: "shopname.myshopify.com"
  static String _storeUrl;

  static String get storeUrl => _storeUrl;

  /// The version of the Storefront API.
  ///
  /// Default is set to 2020-04.
  static String _storefrontApiVersion = '2020-04';

  /// Where to store the cache.
  ///
  /// Default is [InMemoryStore] which does _not_ persist to disk
  static Store _cacheStore;

  /// Sets the config.
  ///
  /// IMPORTANT: preferably call this inside the main function or at least before instantiating other Shopify classes.
  static void setConfig(
    String storefrontAccessToken,
    String storeUrl,
    String storefrontApiVersion, {
    Store cacheStore,
  }) {
    _storefrontAccessToken = storefrontAccessToken ?? _storefrontAccessToken;
    _storeUrl = storeUrl ?? _storeUrl;
    _storefrontApiVersion = storefrontApiVersion ?? _storefrontApiVersion;
    _cacheStore = cacheStore;
  }

  /// The GraphQlClient used for communication with the Storefront API.
  static final GraphQLClient graphQLClient = GraphQLClient(
    link: HttpLink(
      'https://$_storeUrl/api/$_storefrontApiVersion/graphql.json',
      defaultHeaders: {
        'X-Shopify-Storefront-Access-Token': _storefrontAccessToken,
      },
    ),
    cache: GraphQLCache(
      store: _cacheStore,
    ),
  );
}
