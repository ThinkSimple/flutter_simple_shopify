const String getMetaField = r'''
query($id : ID!){
  product(id: $id) {
    metafields(namespace: "wildFox", first: 10) {
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