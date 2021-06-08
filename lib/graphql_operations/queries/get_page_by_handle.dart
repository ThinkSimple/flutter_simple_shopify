const String getPageByHandleQuery = r'''
query($handle : String!){
  pageByHandle(handle: $handle) {
        id
        handle
        title 
        body
        url
    }
}
''';