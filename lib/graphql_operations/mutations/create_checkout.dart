const String createCheckoutMutation = r'''
mutation checkoutCreate($input: CheckoutCreateInput!) {
  checkoutCreate(input: $input) {
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