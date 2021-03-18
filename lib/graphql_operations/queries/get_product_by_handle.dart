const String getProductByHandleQuery = r'''
query($handle: String!) {
  productByHandle(handle: $handle) {
    id
    handle
    title
    availableForSale
    tags
    onlineStoreUrl
    options(first: 50) {
      id
      name
      values
    }
    variants(first: 250) {
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
          selectedOptions {
            name
            value
          }
          image {
            altText
            id
            originalSrc
            transformedSrc(maxWidth: 200, crop: CENTER)
          }
        }
      }
    }
    images(first: 20) {
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
