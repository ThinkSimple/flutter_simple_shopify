const String checkoutShippingAddressUpdateMutation = r'''
mutation checkoutShippingAddressUpdate($checkoutId : ID!, $address1 : String, $address2 : String, $company : String, $city : String, $country : String, $firstName: String, $lastName : String, $phone : String, $province : String, $zip : String) {
  checkoutShippingAddressUpdateV2(checkoutId: $checkoutId, shippingAddress: {address1: $address1, address2: $address2, company: $company, city: $city, country: $country, firstName: $firstName, lastName: $lastName, phone: $phone, province: $province, zip: $zip}) {
     checkoutUserErrors {
      code
      field
      message
    }
  }
}''';

