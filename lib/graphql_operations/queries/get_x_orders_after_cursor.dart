const String getXOrdersAfterCursorQuery = r'''
query getOrders(
  $cursor: String
  $x: Int
  $sortKey: OrderSortKeys
  $accessToken: String!
  $reverse: Boolean
) {
  customer(customerAccessToken: $accessToken) {
    id
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
          name
          orderNumber
          phone
          processedAt
          canceledAt
          cancelReason
          financialStatus
          fulfillmentStatus
          statusUrl
          lineItems(first: 250) {
            edges {
              node {
                title
                variant {
                  id
                  title
                  availableForSale
                  priceV2 {
                    amount
                    currencyCode
                  }
                  image {
                    altText
                    id
                    originalSrc
                    transformedSrc(maxWidth: 400, crop: CENTER)
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
  }
}
''';