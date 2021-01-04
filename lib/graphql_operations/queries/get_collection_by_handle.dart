const String getCollectionByHandleQuery = r'''
query($handle: String!) {
    collectionByHandle(handle: $handle) {
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
        products(first: 20) {
            edges {
                node {
                    variants(first: 1) {
                        edges {
                            node {
                                id
                                title
                                image {
                                    altText
                                    id
                                    originalSrc
                                }
                                priceV2 {
                                    amount
                                    currencyCode
                                }
                                compareAtPriceV2 {
                                    amount
                                    currencyCode
                                }
                                weight
                                weightUnit
                                sku
                                requiresShipping
                                availableForSale
                                quantityAvailable
                            }
                        }
                    }
                    availableForSale
                    collections(first: 1) {
                        edges {
                            node {
                                description
                                descriptionHtml
                                id
                                handle
                                title
                                updatedAt
                            }
                        }
                    }
                    createdAt
                    description
                    descriptionHtml
                    handle
                    id
                    images(first: 10) {
                        edges {
                            node {
                                altText
                                id
                                originalSrc
                            }
                        }
                    }
                    onlineStoreUrl
                    productType
                    publishedAt
                    tags
                    title
                    updatedAt
                    vendor
                }
                cursor
            }
            pageInfo {
                hasNextPage
            }
        }
    }
}


''';
