String getProductsByIdsMinimumDataQuery(int variantsCount) {
  return '''
query(\$ids: [ID!]!) {
  nodes(ids: \$ids) {
    ... on Product {
      id
      handle
      title
      tags
      availableForSale
      descriptionHtml
      productType
      vendor
      rating: metafield(namespace: "rview", key: "rating") {
        key 
        namespace 
        value 
        valueType 
      }
      review_count: metafield(namespace: "rview", key: "review-count") {
        key 
        namespace 
        value 
        valueType 
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
      variants(first: $variantsCount) {
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
          }
        }
      }
    }
  }
}

''';
}