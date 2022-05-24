const String getMenuByHandleQuery = r'''
query($handle : String!){
  menu(handle: $handle) {
    handle
    id
    items {
      id
      items
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
