const String customerUpdateMutation = r'''
mutation customerUpdate($acceptsMarketing: Boolean, $email: String!, $firstName: String, $lastName: String, $password: String!, $phone: String, $customerAccessToken: String!) {
  customerUpdate(customer: {acceptsMarketing: false, email: $email, firstName: $firstName, lastName: $lastName, password: $password, phone: $phone}, customerAccessToken: $customerAccessToken) {
    customerUserErrors {
      code
      field
      message
    }
  }
}
''';