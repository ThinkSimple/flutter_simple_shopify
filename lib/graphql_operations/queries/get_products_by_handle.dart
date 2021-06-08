const String getProductByHandle = r'''
query getProductByHandle($handle: String!) {
  productByHandle(handle: $handle) {
    id
    handle
    title
    availableForSale
    descriptionHtml
    productType
    tags
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
    options(first: 50) {
      id
      name
      values
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
    variants(first: 250) {
      edges {
        node {
          id
          title
          availableForSale
          quantityAvailable
          requiresShipping
          sku
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
    collections(first: 250) {
      edges {
        node {
          id
          handle
          title
        }
      }
    }
  }
}

''';