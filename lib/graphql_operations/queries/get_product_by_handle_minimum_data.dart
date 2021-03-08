const String getProductByHandleMinimumDataQuery = r'''
query($handle: String!) {
  productByHandle(handle: $handle) {
    id
    handle
    title
    availableForSale
    tags
    variants(first: 1) {
      edges {
        node {
          id
          title
          availableForSale
          sku
          requiresShipping
          quantityAvailable
          priceV2 {
            amount
            currencyCode
          }
          compareAtPriceV2 {
            amount
            currencyCode
          }
        }
      }
    }
    images(first: 1) {
      edges {
        node {
          altText
          id
          originalSrc
          transformedSrc(maxWidth: 200, crop: CENTER)
        }
      }
    }
  }
}

''';
