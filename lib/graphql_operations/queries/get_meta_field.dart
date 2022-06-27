const String getMetaField = r'''
query ProductMetafields($productId : ID!){
  product(id: $productId) {
    metafields(namespace: "wildfox", first: 10) {
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
