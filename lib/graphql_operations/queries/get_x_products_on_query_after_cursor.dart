const String getXProductsOnQueryAfterCursorQuery = r'''
query( $cursor: String, $limit : Int, $sortKey : ProductSortKeys, $query: String, $reverse: Boolean){
  products(query: $query, first: $limit, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
    edges {
      node {
        id
        handle
        title
        availableForSale
        onlineStoreUrl
        productType
        tags
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
        variants(first: 250) {
          edges {
            node {
              id
              title
              requiresShipping
              quantityAvailable
              availableForSale
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
''';
