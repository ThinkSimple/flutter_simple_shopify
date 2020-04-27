const String getFeaturedCollectionQuery = r'''
{
  collections(query: "Featured Collection", first: 1) {
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
        }
        products(first: 250) {
          edges {
            node {
              variants(first: 250) {
                edges {
                  node {
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
                    sku
                    requiresShipping
                    availableForSale
                  }
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
                  }
                }
              }
              onlineStoreUrl
              productType
              publishedAt
              tags
              title
              updatedAt
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