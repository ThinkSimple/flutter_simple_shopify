const String getXProductsAfterCursorWithinCollectionQuery = r'''
query(
  $id: ID!
  $cursor: String
  $limit: Int
  $sortKey: ProductCollectionSortKeys
  $reverse: Boolean
) {
  node(id: $id) {
    ... on Collection {
      id
      handle
      title
      image {
        altText
        id
        originalSrc
        transformedSrc(maxWidth: 400, crop: CENTER)
      }
      products(
        first: $limit
        sortKey: $sortKey
        after: $cursor
        reverse: $reverse
      ) {
        edges {
          cursor
          node {
            id
            handle
            title
            availableForSale
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
                  requiresShipping
                  availableForSale
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
          }
        }
        pageInfo {
          hasNextPage
        }
      }
    }
  }
}

''';
