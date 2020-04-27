const String getProductsByIdsQuery = r'''
{
  nodes(ids: [ID!]) {
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