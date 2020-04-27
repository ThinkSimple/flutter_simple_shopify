const String customerResetMutation = r'''
mutation customerReset($id: ID!, $resetToken: String!, $password: String!) {
  customerReset(id: $id, input: {resetToken: $resetToken, password: $password}) {
    customerUserErrors {
      code
      field
      message
    }
    customer {
      id
    }
  }
}
''';