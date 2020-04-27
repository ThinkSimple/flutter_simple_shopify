const String completeCheckoutFree = r'''
mutation completeCheckoutFree($checkoutId: ID!) {
  checkoutCompleteFree(checkoutId: $checkoutId) {
    checkout {
      completedAt
      createdAt
      currencyCode
      id
    }
  }
}
''';