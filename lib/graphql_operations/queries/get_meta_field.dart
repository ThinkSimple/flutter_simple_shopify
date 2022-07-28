const String getMetaField = r'''
query ProductMetafields($ownerId : ID!){
  product(id: $ownerId) {
    id
    title
    variants(first : 5){
      edges {
        node {
          id
          title
          metafields (first : 250, namespace: $namespace){
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
    }
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
