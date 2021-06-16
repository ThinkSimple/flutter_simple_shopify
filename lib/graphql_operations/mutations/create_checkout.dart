String createCheckoutMutation = r'''
mutation checkoutCreate($input: CheckoutCreateInput!) {
  checkoutCreate(input: $input) {
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
  }
}
''';
