const String createCheckoutMutation = r'''
mutation MyMutation {
  checkoutCreate(input: {}) {
    checkout {
      id
    }
  }
}
''';