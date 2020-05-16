const String getProductsByIdsQuery = r'''
query($ids : [ID!]!){
  nodes(ids: $ids) {
    ... on Product {
      id
      handle
      collections(first: 250) {
        edges {
          node {
            description
            descriptionHtml
            handle
            id
            updatedAt
            title
          }
        }
      }
      title
      availableForSale
      createdAt
      description
      descriptionHtml
      images(first: 250) {
          edges {
            node {
              altText
              id
              originalSrc
            }
          }
        }
      variants(first: 250) {
        edges {
          node {
            priceV2 {
              amount
              currencyCode
            }
            title
            image {
              altText
              originalSrc
              id
            }
            compareAtPriceV2 {
              amount
              currencyCode
            }
            weightUnit
            weight
            availableForSale
            sku
            requiresShipping
            id
          }
        }
      }
      onlineStoreUrl
      productType
      publishedAt
      tags
      updatedAt
    }
  }
}
''';