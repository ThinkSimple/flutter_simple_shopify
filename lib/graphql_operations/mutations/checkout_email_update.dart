const String checkoutEmailUpdateMutation = r'''
mutation checkoutEmailUpdate($checkoutId : ID!, $email : String!) {
  checkoutEmailUpdateV2(checkoutId: $checkoutId, email: $email) {
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