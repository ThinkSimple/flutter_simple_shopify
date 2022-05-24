const String getMenuByHandleQuery = r'''
query($handle : String!){
  menu(handle: $handle) {
    handle
    id
    items {
      id
      items {
        id
        items {
          id
          resourceId
          tags
          title
          type
        }
        resourceId
        tags
        title
        type
      }
      resourceId
      tags
      title
      type
    }
    itemsCount
    title
  }
}
''';
