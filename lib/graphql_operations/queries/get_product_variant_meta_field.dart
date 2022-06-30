const String getProductVariantMetaField = r'''
query ProductMetafields($ownerId : ID!){
    product(id: $ownerId) {
      metafields(namespace: "wildfox", first: 50) {
        edges {
          node {
            id
            key
            namespace
            value
            valueType
            description
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