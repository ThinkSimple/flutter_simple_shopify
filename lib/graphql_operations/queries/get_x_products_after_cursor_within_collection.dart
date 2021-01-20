const String getXProductsAfterCursorWithinCollectionQuery = r'''
query($id : ID!, $cursor : String, $limit : Int, $sortKey : ProductCollectionSortKeys, $reverse: Boolean){
  node(id: $id) {
    ... on Collection {
      id
      description
      descriptionHtml
      handle
      title
      updatedAt
      image {
        altText
        id
        originalSrc
        transformedSrc(maxWidth: 200, crop: CENTER)
      }
      products(first: $limit, sortKey: $sortKey, after: $cursor, reverse: $reverse) {
        edges {
          cursor
          node {
          options(first: 50) {
            id
            name
            values
            } 
            availableForSale
            collections(first: 1) {
              edges {
                node {
                  description
                  descriptionHtml
                  handle
                  id
                  title
                  updatedAt
                }
              }
            }
            createdAt
            description
            descriptionHtml
            handle
            id
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
            onlineStoreUrl
            productType
            publishedAt
            tags
            title
            updatedAt
            vendor
            variants(first: 25) {
              edges {
                node {
                  title
                  image {
                    altText
                    id
                    originalSrc
                    transformedSrc(maxWidth: 200, crop: CENTER)
                  }
                  priceV2 {
                    amount
                    currencyCode
                  }
                  compareAtPriceV2 {
                    amount
                    currencyCode
                  }
                  weight
                  weightUnit
                  sku
                  requiresShipping
                  availableForSale
                  id
                  quantityAvailable
                }
              }
            }
          }
        }
      pageInfo{
        hasNextPage
        }}
    }
  }
}
''';
