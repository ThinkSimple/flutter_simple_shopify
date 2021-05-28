const String getCollectionsByIdsQuery = r'''
query getCollectionsByIds($ids: [ID!]!){
  nodes(ids: $ids) {
    ... on Collection {
      id
      handle
      descriptionHtml
      image {
        src
        originalSrc
        transformedSrc(maxWidth: 200, crop: CENTER)
        id
        altText
      }
      title
      updatedAt
    }
  }
}''';

