const String getNProductsQuery = r'''
query($n : Int, $sortKey : ProductSortKeys, $reverse: Boolean){
  products(first: $n, sortKey: $sortKey, reverse: $reverse) {
    pageInfo {
      hasNextPage
    }
    edges {
      cursor
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
          type 
        }
        review_count: metafield(namespace: "rview", key: "review-count") {
          key 
          namespace 
          value 
          type 
        }
        variants(first: 1) {
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
            }
          }
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
      }
    }
  }
}

''';
