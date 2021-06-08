String getCollectionByHandleWithProductsQuery(int productsCount) {
  return '''
query(\$handle: String!) {
  collectionByHandle(handle: \$handle) {
    title
    handle
    id
    image {
      altText
      id
      originalSrc
      transformedSrc(maxWidth: 400, crop: CENTER)
    }
    products(first: $productsCount) {
      edges {
        node {
          id
          handle
          title
          availableForSale
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
          variants(first: 1) {
            edges {
              node {
                id
                title
                requiresShipping
                availableForSale
                quantityAvailable
                image {
                  altText
                  id
                  originalSrc
                  transformedSrc(maxWidth: 400, crop: CENTER)
                }
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
          images(first: 10) {
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
        cursor
      }
      pageInfo {
        hasNextPage
      }
    }
  }
}
''';
}
