const String getProductVariantMetaField = r'''
query getProductVariantMetafields($ownerId : ID!){
  productVariantsMetafields(first: 10) {
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