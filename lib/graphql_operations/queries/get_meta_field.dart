const String getMetaField = r'''
query ProductMetafields($id : ID!){
  product(id: $id) {
    metafields(namespace: "wildfox", first: 3) {
      edges {
        node {
          id
          namespace
          key
          value
        }
      }
    }
  }
}
''';