const String getMenuByHandleQuery = r'''
query($handle : String!){
  menu(handle: $handle) {
    handle
    id
    itemsCount
    title
  }
}
''';
