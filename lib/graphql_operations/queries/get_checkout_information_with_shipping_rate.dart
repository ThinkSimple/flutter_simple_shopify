const String getCheckoutInfoWithShippingRate = r'''
query($id: ID!){
  node(id: $id) {
    ... on Checkout {
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
  }
}
''';


/* availableShippingRates {
        ready
        shippingRates {
          handle
          title
          priceV2 {
            amount
            currencyCode
       }}}

 */