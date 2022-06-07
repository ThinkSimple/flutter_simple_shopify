const String get_meta_field = r'''
query($id : String){
  product(id: $id) {
    metafields(namespace: "wildFox", first: 10) {
      edges
      nodes {
        namespace
        key
        value
      }
    }
  }
}
''';