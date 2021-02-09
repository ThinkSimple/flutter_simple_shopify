const String getProductsByIdsMinimumDataQuery = r'''
query($ids: [ID!]!) {
  nodes(ids: $ids) {
    ... on Product {
      id
      handle
      title
      availableForSale
      descriptionHtml
      productType
      images(first: 1) {
        edges {
          node {
            altText
            id
            originalSrc
            transformedSrc(maxWidth: 200, crop: CENTER)
          }
        }
      }
      variants(first: 1) {
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
          }
        }
      }
    }
  }
}

''';
