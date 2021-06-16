const String checkoutShippingAddressUpdateMutation = r'''
mutation checkoutShippingAddressUpdate($checkoutId : ID!, $address1 : String, $address2 : String, $company : String, $city : String, $country : String, $firstName: String, $lastName : String, $phone : String, $province : String, $zip : String) {
  checkoutShippingAddressUpdateV2(checkoutId: $checkoutId, shippingAddress: {address1: $address1, address2: $address2, company: $company, city: $city, country: $country, firstName: $firstName, lastName: $lastName, phone: $phone, province: $province, zip: $zip}) {
    checkout {
      id
      webUrl
      lineItems(first: 5) {
         edges {
           node {
             id
             title
             quantity
              discountAllocations {
              allocatedAmount {
                amount
                currencyCode
              }
            }
             variant {
              id
              priceV2 {
                amount
                currencyCode
              }
              title
              image {
                altText
                originalSrc
                id
              }
              compareAtPriceV2 {
                amount
                currencyCode
              }
              weight
              weightUnit
              availableForSale
              sku
              requiresShipping
            }
          }
        }
      }
    }
     checkoutUserErrors {
      code
      field
      message
    }
  }
}''';
