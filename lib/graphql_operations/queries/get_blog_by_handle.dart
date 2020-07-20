const String getBlogByHandleQuery = r'''
query($handle : String!, $sortKey: ArticleSortKeys, $reverseArticles: Boolean){
  blogByHandle(handle: $handle) {
    articles(first: 250, sortKey: $sortKey, reverse: $reverseArticles) {
      edges {
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
                content
                contentHtml
                id
                author {
                  email
                  name
                }
              }
            }
          }
          content
          contentHtml
          excerpt
          excerptHtml
          id
          handle
          image {
            altText
            id
            originalSrc
          }
          publishedAt
          tags
          title
          url
        }
      }
    }
    handle
    id
    title
    url
  }
}
''';