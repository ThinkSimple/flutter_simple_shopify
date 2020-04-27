const String accessTokenDeleteMutation = r'''
mutation accessTokenDelete($customerAccessToken: String!) {
  customerAccessTokenDelete(customerAccessToken: $customerAccessToken) {
    userErrors {
      field
      message
    }
  }
}
''';