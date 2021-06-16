String removeLineItemsFromCheckoutMutation = r'''
mutation checkoutLineItemsRemove($lineItemIds: [ID!]!, $checkoutId: ID!) {
  checkoutLineItemsRemove(lineItemIds: $lineItemIds, checkoutId: $checkoutId) {
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
