String getProductRecommendationsQuery(int variantsCount) {
  return '''
query getProductRecommentationsQuery(\$id: ID!){
  productRecommendations(productId: \$id) {
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
          requiresShipping
          quantityAvailable
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
''';
}