const String customerDefaultAddressUpdateMutation = r'''
mutation customerDefaultAddressUpdate($addressId: ID!, $customerAccessToken String!) {
  customerDefaultAddressUpdate(addressId: $addressId, customerAccessToken: $customerAccessToken) {
    customerUserErrors {
      code
      field
      message
    }
  }
}
''';