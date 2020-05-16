const String getProductByHandle = r'''
query getProductByHandle($handle : String!){
  productByHandle(handle: $handle) {
    id
    handle
    images(first: 250) {
      edges {
        node {
          originalSrc
        }
      }
    }
    variants(first: 10) {
      edges {
        node {
          priceV2 {
            amount
            currencyCode
          }
        }
      }
    }
  }
}
''';