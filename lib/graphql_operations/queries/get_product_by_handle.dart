const String getProductByHandleQuery = r'''
query($handle: String!) {
  productByHandle(handle: $handle) {
    id
    handle
    title
    availableForSale
    tags
    onlineStoreUrl
    productType
    vendor 
    options(first: 50) {
      id
      name
      values
    }
    vendor
    rating: metafield(namespace: "rview", key: "rating") {
      key 
      namespace 
      value 
      valueType 
    }
    review_count: metafield(namespace: "rview", key: "review-count") {
      key 
      namespace 
      value 
      valueType 
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
            transformedSrc(maxWidth: 400, crop: CENTER)
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
          transformedSrc(maxWidth: 400, crop: CENTER)
        }
      }
    }
  }
}

''';
