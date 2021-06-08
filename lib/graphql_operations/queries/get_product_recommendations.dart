const String getProductRecommendationsQuery = r'''
query getProductRecommentationsQuery($id: ID!){
  productRecommendations(productId: $id) {
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
    variants(first: 1) {
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
        }
      }
    }
  }
}
''';
