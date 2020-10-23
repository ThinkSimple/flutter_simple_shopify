const String getXCollectionsAndNProductsSortedQuery = r'''
query($cursor: String, $sortKey: CollectionSortKeys, $sortKeyProduct: ProductCollectionSortKeys, $reverse: Boolean, $x: Int, $n: Int){
  collections(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
  pageInfo{
    hasNextPage
  }
    edges {
      cursor
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
        products(first: $n, sortKey: $sortKeyProduct) {
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
                    selectedOptions {
                      name
                      value
                    }
                    availableForSale
                    quantityAvailable
                  }
                }
              }
              availableForSale
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
