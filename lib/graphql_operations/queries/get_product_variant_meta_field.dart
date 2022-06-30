const String getProductVariantMetaField = r'''
query ProductMetafields($ownerId : ID!){
  productVariants(first: 10) {
    edges {
      node {
        metafields(first: 10) {
          edges {
            node {
              namespace
              key
              value
            }
          }
        }
      }
    }
  }
}
''';