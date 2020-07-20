const String getAllOrdersQuery = r'''
query getOrders($sortKey : OrderSortKeys, $accessToken : String!, $reverse: Boolean){
customer(customerAccessToken: $accessToken) {
    orders(first: 250, sortKey: $sortKey, reverse: $reverse) {
      edges {
        node {
          id
          email
          currencyCode
          customerUrl
          lineItems(first: 250) {
            edges {
              node {
                currentQuantity
                discountAllocations {
                  allocatedAmount {
                    amount
                    currencyCode
                  }
                }
                discountedTotalPrice {
                  amount
                  currencyCode
                }
                originalTotalPrice {
                  amount
                  currencyCode
                }
                quantity
                title
                variant {
                  priceV2 {
                    amount
                    currencyCode
                  }
                  title
                  image {
                    altText
                    id
                    originalSrc
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
                  id
                }
              }
            }
          }
          name
          orderNumber
          phone
          processedAt
          shippingAddress {
            address1
            address2
            city
            company
            country
            countryCodeV2
            firstName
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
          statusUrl
          subtotalPriceV2 {
            amount
            currencyCode
          }
          totalPriceV2 {
            amount
            currencyCode
          }
          totalRefundedV2 {
            amount
            currencyCode
          }
          totalShippingPriceV2 {
            amount
            currencyCode
          }
          totalTaxV2 {
            amount
            currencyCode
          }
        }
        cursor
      }
    }
    id
  }
}
''';