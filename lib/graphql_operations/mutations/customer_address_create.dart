const String customerAddressCreateMutation = r'''
mutation MyMutation($address1 : String, $address2 : String, $company : String, $city : String, $country : String, $firstName: String, $lastName : String, $phone : String, $province : String, $zip : String, $customerAccessToken : String!) {
  customerAddressUpdate(address: {address1: $address1, address2: $address2, company: $company, city: $city, country: $country, firstName: $firstName, lastName: $lastName, phone: $phone, province: $province, zip: $zip}, customerAccessToken: $customerAccessToken{
    customerUserErrors {
      message
      field
      code
    }
  }
}
''';