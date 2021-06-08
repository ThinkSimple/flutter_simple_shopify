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
        excerpt
        excerptHtml
        contentHtml
        authorV2 {
          bio
          email
          firstName
          lastName
          name
        }
        image {
          altText
          id
          originalSrc
          transformedSrc(maxWidth: 400, crop: CENTER)
        }
      }
    }
  }
}

''';
