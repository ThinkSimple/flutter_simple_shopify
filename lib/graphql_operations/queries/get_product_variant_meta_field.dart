const String getProductVariantMetaField = r'''
query ProductMetafields($ownerId : ID!){
    product(id: $ownerId) {
      variants(first: 10, last: 10) {
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