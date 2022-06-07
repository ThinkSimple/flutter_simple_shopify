const String getMetaField = r'''
query ProductMetafields($id : ID!){
  product(id: $id) {
    metafields(namespace: "wildFox", first: 3) {
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