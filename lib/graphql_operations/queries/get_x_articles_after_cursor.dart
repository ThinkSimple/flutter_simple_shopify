const String getXArticlesAfterCursorQuery = r'''
query($cursor : String, $x : Int, $reverse: Boolean, $sortKey: ArticleSortKeys){
  articles(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
    pageInfo {
      hasNextPage
    }
    edges {
      cursor
      node {
      
        authorV2 {
          bio
          email
          firstName
          lastName
          name
        }
        comments(first: 250) {
          edges {
            node {
              author {
                email
                name
              }
              content
              contentHtml
              id
            }
          }
        }
        content
        contentHtml
        excerpt
        excerptHtml
        handle
        id
        image {
          altText
          id
          originalSrc
          transformedSrc(maxWidth: 200, crop: CENTER)
        }
        publishedAt
        tags
        title
        url
        
        
        
      }
    }
  }
}''';
