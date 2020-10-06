const String checkoutCompleteFreeMutation = r'''
mutation checkoutCompleteFree($checkoutId: ID!) {
  checkoutCompleteFree(checkoutId: $checkoutId) {
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