import 'package:flutter_simple_shopify/graphql_operations/queries/get_address_details.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_address_predictions.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/address_autocomplete/address_details/address_details.dart';
import 'package:flutter_simple_shopify/models/src/address_autocomplete/address_prediction/address_prediction.dart';
import 'package:flutter_simple_shopify/models/src/address_autocomplete/location_input/location_input.dart';
import 'package:graphql/client.dart';
import 'package:intl/intl.dart';

import '../../shopify_config.dart';

/// ShopifyAddressAutocomplete class for address autocompletion e.g. during the checkout
class ShopifyAddressAutocomplete with ShopifyError {
  ShopifyAddressAutocomplete._();

  final GraphQLClient _graphQLClient = GraphQLClient(
    link: HttpLink(
      "https://autocomplete-service.shopifycloud.com/graphql",
      defaultHeaders: {
        "origin": "https://checkout.shopify.com",
      },
    ),
    cache: GraphQLCache(
      store: ShopifyConfig.cacheStore,
    ),
  );
  static final ShopifyAddressAutocomplete instance =
      ShopifyAddressAutocomplete._();

  /// [query] user input to get predictions from. Often called on every input change
  /// [countryCode] e.g. DE for germany
  Future<List<AddressPrediction>> getPredictions(
    String query,
    String countryCode, {
    String? locale,
    LocationInput? location,
    bool deleteThisPartOfCache = false,
  }) async {
    final QueryOptions _options = WatchQueryOptions(
      document: gql(getAddressPredictions),
      variables: {
        'query': query,
        'countryCode': countryCode,
        'locale': locale ?? Intl.getCurrentLocale(),
        'location': location?.toJson(),
      },
    );
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return (result.data!['predictions'] as List)
        .map((e) => AddressPrediction.fromJson(e))
        .toList();
  }

  Future<AddressDetails> getDetails(
    AddressPrediction prediction, {
    String? locale,
    bool deleteThisPartOfCache = false,
  }) async {
    final QueryOptions _options = WatchQueryOptions(
      document: gql(getAddressDetails),
      variables: {
        'predictionId': prediction.addressId,
        'locale': locale ?? Intl.getCurrentLocale(),
      },
    );
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return AddressDetails.fromJson(result.data!['address']);
  }
}
