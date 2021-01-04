const String getAllBlogsQuery = r'''
query getBlogs($reverseBlogs: Boolean, $reverseArticles: Boolean, $sortKey: BlogSortKeys ){
  blogs(first: 250, sortKey: $sortKey, reverse: $reverseBlogs) {
    edges {
      node {
        id
        handle
        title
        url
        articles(first: 250, sortKey: TITLE, reverse: $reverseArticles) {
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
              }
              publishedAt
              tags
              title
              url
            }
          }
        }
      }
    }
  }
}
''';
