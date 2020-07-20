const String getAllCollectionsOptimizedQuery = r'''
query($cursor: String, $sortKey: CollectionSortKeys, $reverse: Boolean){
  collections(first: 250, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
  pageInfo{
    hasNextPage
  }
    edges {
      cursor
      node {
        title
        description
        descriptionHtml
        handle
        id
        updatedAt
        image {
          altText
          id
          originalSrc
        }
      }
    }
  }
}
''';