const String getXProductsOnQueryAfterCursorQuery = r'''
query( $cursor: String, $limit : Int, $sortKey : ProductSortKeys, $query: String, $reverse: Boolean){
  products(query: $query, first: $limit, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
    edges {
      node {
      options(first: 50) {
            id
            name
            values
            } 
        id
        handle
        availableForSale
        createdAt
        description
        descriptionHtml
        onlineStoreUrl
        productType
        publishedAt
        tags
        title
        updatedAt
        vendor
        images(first: 250) {
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
              availableForSale
              sku
              requiresShipping
              id
              quantityAvailable
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
}''';
