const String getNProductsQuery = r'''
query($n : Int, $sortKey : ProductSortKeys, $reverse: Boolean){
  products(first: $n, sortKey: $sortKey, reverse: $reverse) {
    pageInfo {
      hasNextPage
    }
    edges {
      cursor
      node {
        variants(first: 250) {
          edges {
            node {
              id
              title
              image {
                altText
                id
                originalSrc
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
            }
          }
          pageInfo {
            hasNextPage
          }
        }
        availableForSale
        collections(first: 250) {
          edges {
            node {
              description
              descriptionHtml
              id
              handle
              updatedAt
              title
            }
          }
        }
        createdAt
        description
        descriptionHtml
        handle
        id
        onlineStoreUrl
        productType
        publishedAt
        tags
        title
        updatedAt
        images(first: 250) {
          edges {
            node {
              altText
              id
              originalSrc
            }
          }
        }
      }
    }
  }
}

''';