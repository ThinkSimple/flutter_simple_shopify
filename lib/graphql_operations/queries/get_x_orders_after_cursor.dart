const String getXOrdersAfterCursorQuery = r'''
query getOrders($cursor : String, $x : Int,$sortKey : OrderSortKeys, $accessToken : String!, $reverse: Boolean){
customer(customerAccessToken: $accessToken) {
    orders(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
      pageInfo {
        hasNextPage
      }
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
          canceledAt
          cancelReason
          financialStatus
          fulfillmentStatus
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
          currentSubtotalPrice {
            amount
            currencyCode
          }
          currentTotalPrice {
            amount
            currencyCode
          }
          currentTotalTax {
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