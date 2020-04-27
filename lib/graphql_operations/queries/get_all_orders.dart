const String getAllOrdersQuery = r'''
query($cursor : String, $customerAccessToken: String!){
  customer(customerAccessToken: $customerAccessToken){
    orders(first: 250, sortKey: PROCESSED_AT, after: $cursor) {
    pageInfo {
      hasNextPage
    }
      edges {
      cursor
        node {
          id
          email
          currencyCode
          customerUrl
          lineItems(first: 250) {
            edges {
              node {
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
            id
            address1
            address2
            city
            company
            country
            countryCodeV2
            firstName
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
      }
    }
  }
}

''';