const String getMetafieldsFromProductQuery = r'''
query($handle: String!, $namespace: String!) {
  productByHandle(handle: $handle) {
    products (first : 5) {
      edges {
        node {
          id
          title
          variants(first : 5){
            edges {
              node {
                id
                title
                metafields (first : 250, namespace: $namespace)){
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
    }
  }
}
 ''';