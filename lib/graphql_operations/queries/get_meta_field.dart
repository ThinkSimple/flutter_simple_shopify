const String getMetaField = r'''
query ProductMetafields($ownerId : ID!){
  product(id: $ownerId) {
    id
    title
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
    variants(first : 50){
      edges {
        node {
          id
          title
          metafields (first : 50, namespace: "wildfox"){
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
  }
}
''';
