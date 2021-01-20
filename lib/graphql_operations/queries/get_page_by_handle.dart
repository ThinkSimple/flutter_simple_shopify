const String getPageByHandleQuery = r'''
query($handle : String!){
  pageByHandle(handle: $handle) {
    id
    handle
    title
    url
    body
    bodySummary
    createdAt
    updatedAt
  }
}
''';
