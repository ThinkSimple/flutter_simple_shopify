const String checkoutShippingLineUpdateMutation = r'''
mutation checkoutShippingLineUpdate($checkoutId: ID!, $shippingRateHandle: String!) {
  checkoutShippingLineUpdate(checkoutId: $checkoutId, shippingRateHandle: $shippingRateHandle) {
    checkout {
      id
    }
    checkoutUserErrors {
      code
      field
      message
    }
  }
}
''';