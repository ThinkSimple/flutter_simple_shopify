const String getXArticlesAfterCursorQuery = r'''
query($cursor: String, $x: Int, $reverse: Boolean, $sortKey: ArticleSortKeys) {
  articles(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
    pageInfo {
      hasNextPage
    }
    edges {
      cursor
      node {
        id
        handle
        title
        publishedAt
        url
        authorV2 {
          bio
          email
          firstName
          lastName
          name
        }
        contentHtml
        image {
          altText
          id
          originalSrc
          transformedSrc(maxWidth: 200, crop: CENTER)
        }
      }
    }
  }
}

''';
