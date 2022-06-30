const String getProductVariantMetaField = r'''
query ProductMetafields($ownerId : ID!){
    product(id: $ownerId) {
    metafields {
      edges {
        node {
          id
          key
          namespace
          value
        }
      }
    }
    variants(first: 10) {
      edges {
      node {
        metafields {
            edges {
              node {
                id
                key
                namespace
                value
              }
            }
          }
        }
      }
    }
  }
}
''';