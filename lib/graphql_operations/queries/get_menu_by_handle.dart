const String getMenuByHandleQuery = r'''
query($handle : String!){
  menu(handle: $handle) {
    handle
    id
    items {
      edges {
        node {
          id
          items {
            edges {
              node { 
                id
                items
                resourceId
                tags
                title
                type
                url
              }
            }
          }
          resourceId
          tags
          title
          type
          url
        }
      }
    }
    itemsCount
    title
  }
}
''';
