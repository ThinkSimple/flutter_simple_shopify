const String getCollectionByHandleQuery = r'''
query($handle: String!) {
    collectionByHandle(handle: $handle) {
        title
        handle
        id
        image {
            altText
            id
            originalSrc
            transformedSrc(maxWidth: 400, crop: CENTER)
        }
    }
}
''';
