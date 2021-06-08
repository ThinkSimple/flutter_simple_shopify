String createCheckoutMutation = r'''
mutation checkoutCreate($input: CheckoutCreateInput!) {
  checkoutCreate(input: $input) {
    checkout {
      id
      webUrl
      shopify_payments_account_id
      lineItems(first: 5) {
         edges {
           node {
             id
             title
             quantity
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
