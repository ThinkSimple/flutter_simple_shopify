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
            transformedSrc(maxWidth: 400, crop: CENTER)
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