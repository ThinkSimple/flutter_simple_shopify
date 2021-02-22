const String getProductsByIdsQuery = r'''
query($ids: [ID!]!) {
  nodes(ids: $ids) {
    ... on Product {
      id
      handle
      title
      availableForSale
      descriptionHtml
      productType
      tags
      options(first: 50) {
        id
        name
        values
      }
      images(first: 20) {
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
            availableForSale
            quantityAvailable
            requiresShipping
            sku
            priceV2 {
              amount
              currencyCode
            }
            compareAtPriceV2 {
              amount
              currencyCode
            }
            selectedOptions {
              name
              value
            }
            image {
              altText
              id
              originalSrc
              transformedSrc(maxWidth: 200, crop: CENTER)
            }
          }
        }
      }
    }
  }
}

''';
