String removeLineItemsFromCheckoutMutation = r'''
mutation checkoutLineItemsRemove($lineItemIds: [ID!]!, $checkoutId: ID!) {
  checkoutLineItemsRemove(lineItemIds: $lineItemIds, checkoutId: $checkoutId) {
    checkout {
      id
    }
  }
}
''';
