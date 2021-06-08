const String getFeaturedCollectionQuery = r'''
query getFeaturedCollectionQuery($query: String!){
  collections(query: $query, first: 1) {
    edges {
      node {
        title
        description
        descriptionHtml
        handle
        id
        updatedAt
        image {
          altText
          id
          originalSrc
          transformedSrc(maxWidth: 400, crop: CENTER)
        }
        products(first: 20) {
          edges {
            node {
              variants(first: 1) {
                edges {
                  node {
                    title
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
                    weight
                    weightUnit
                    sku
                    requiresShipping
                    availableForSale
                    quantityAvailable
                  }
                }
              }
              availableForSale
              collections(first: 1) {
                edges {
                  node {
                    description
                    descriptionHtml
                    id
                    handle
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
              onlineStoreUrl
              productType
              publishedAt
              tags
              title
              updatedAt
              vendor
            }
            cursor
          }
          pageInfo {
            hasNextPage
          }
        }
      }
    }
  }
}

''';
