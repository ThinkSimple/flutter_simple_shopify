import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test price formatting', () {
    PriceV2 price = PriceV2.fromJson({
      'amount': '1.0',
      'currencyCode': 'EUR',
    });
    expect(price.amount, 1.0);
    expect(price.currencyCode, '€');
    expect(price.currencyCode, '1.0 €');
  });
}
