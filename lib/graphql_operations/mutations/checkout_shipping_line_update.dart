const String checkoutShippingLineUpdateMutation = r'''
mutation checkoutShippingLineUpdate($checkoutId : ID!, $shippingRateHandle : String!) {
  checkoutShippingLineUpdate(checkoutId: $checkoutId, shippingRateHandle: $shippingRatehandle) {
    checkoutUserErrors {
      code
      field
      message
    }
  }
}
''';