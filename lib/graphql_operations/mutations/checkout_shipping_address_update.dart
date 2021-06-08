const String checkoutShippingAddressUpdateMutation = r'''
mutation checkoutShippingAddressUpdateV2(
  $checkoutId: ID!
  $address1: String
  $address2: String
  $company: String
  $city: String
  $country: String
  $firstName: String
  $lastName: String
  $phone: String
  $province: String
  $zip: String
) {
  checkoutShippingAddressUpdateV2(
    checkoutId: $checkoutId
    shippingAddress: {
      address1: $address1
      address2: $address2
      company: $company
      city: $city
      country: $country
      firstName: $firstName
      lastName: $lastName
      phone: $phone
      province: $province
      zip: $zip
    }
  ) {
    checkout {
      id
      email
      requiresShipping
      currencyCode
      webUrl
      orderStatusUrl
      shippingLine {
        handle
        title
        priceV2 {
          amount
          currencyCode
        }
      }
      availableShippingRates {
        ready
        shippingRates {
          handle
          title
          priceV2 {
            amount
            currencyCode
          }
        }
      }
      shippingAddress {
        address1
        address2
        city
        company
        country
        countryCodeV2
        firstName
        formattedArea
        id
        lastName
        latitude
        longitude
        name
        phone
        province
        provinceCode
        zip
      }
      lineItems(first: 10) {
        edges {
          node {
            id
            quantity
            title
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
                transformedSrc(maxWidth: 400, crop: CENTER)
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
      discountApplications(first: 10) {
        edges {
          node {
            allocationMethod
            targetSelection
            targetType
            value {
              ... on MoneyV2 {
                amount
                currencyCode
              }
              ... on PricingPercentageValue {
                percentage
              }
            }
          }
        }
      }
      lineItemsSubtotalPrice {
        amount
        currencyCode
      }
      taxesIncluded 
      totalTaxV2 {
        amount
        currencyCode
      }
      totalPriceV2 {
        amount
        currencyCode
      }
      subtotalPriceV2 {
        amount
        currencyCode
      }
    }
    checkoutUserErrors {
      code
      field
      message
    }
  }
}

''';

