const String checkoutAttributesUpdateMutation = r'''
mutation checkoutAttributesUpdateV2($checkoutId: ID!, $input: CheckoutAttributesUpdateV2Input!) {
  checkoutAttributesUpdateV2(checkoutId: $checkoutId, input: $input) {
    checkoutUserErrors {
      code
      field
      message
    }
  }
}
''';
