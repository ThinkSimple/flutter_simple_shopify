import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test price formatting', () {
    PriceV2 price = PriceV2.fromJson({
      'amount': '1.0',
      'currencyCode': 'EUR',
    });
    expect(price.amount, 1.0);
    expect(price.currencySymbol, '€');
    expect(price.formattedPrice, '1.0 €');
  });
}
