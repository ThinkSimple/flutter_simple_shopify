const String getXProductAfterCursorByCollectionHandleQuery = r'''
query(
  $handle: String!
  $cursor: String
  $x: Int
  $reverse: Boolean
  $sortKey: ProductCollectionSortKeys
) {
  collectionByHandle(handle: $handle) {
    id
    handle
    title
    descriptionHtml
    image {
      altText
      id
      originalSrc
      transformedSrc(maxWidth: 400, crop: CENTER)
    }
    products(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
      pageInfo {
        hasNextPage
      }
      edges {
        cursor
        node {
          id
          handle
          availableForSale
          title
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
          images(first: 1) {
            edges {
              node {
                altText
                id
                originalSrc
                transformedSrc(maxWidth: 400, crop: CENTER)
              }
            }
          }
          variants(first: 1) {
            edges {
              node {
                id
                title
                availableForSale
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
            pageInfo {
              hasNextPage
            }
          }
        }
      }
    }
  }
}
''';
