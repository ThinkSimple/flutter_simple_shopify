const String getProductsByIdsQuery = r'''
query($ids : [ID!]!){
  nodes(ids: $ids) {
    ... on Product {
    options(first: 50) {
            id
            name
            values
      } 
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
              transformedSrc(maxWidth: 200, crop: CENTER)
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
              transformedSrc(maxWidth: 200, crop: CENTER)
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
            quantityAvailable
            selectedOptions {
              name
              value
            }
          }
        }
      }
      onlineStoreUrl
      productType
      publishedAt
      tags
      updatedAt
      vendor
    }
  }
}
''';
