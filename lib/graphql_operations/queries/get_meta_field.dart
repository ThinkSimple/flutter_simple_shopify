const String getMetaField = r'''
query ProductMetafields($productId : ID!){
  product(id: $productId) {
    metafields(namespace: "wildfox", first: 50) {
      edges {
        node {
          id
          namespace
          key
          value
          valueType
          description
        }
      }
    }
  }
}
''';
