const String getXProductAfterCursorByCollectionHandleQuery = r'''
query($handle: String!, $cursor : String, $x : Int, $reverse: Boolean, $sortKey: ProductCollectionSortKeys) {
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
        products(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
            pageInfo {
                hasNextPage
            }
            edges {
                cursor
                node {
                    options(first: 50) {
                        id
                        name
                        values
                    }
                    variants(first: 250) {
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
                                availableForSale
                                sku
                                requiresShipping
                                quantityAvailable
                                selectedOptions {
                                  name
                                  value
                                }
                            }
                        }
                        pageInfo {
                            hasNextPage
                        }
                    }
                    availableForSale
                    collections(first: 250) {
                        edges {
                            node {
                                description
                                descriptionHtml
                                id
                                handle
                                updatedAt
                                title
                            }
                        }
                    }
                    createdAt
                    description
                    descriptionHtml
                    handle
                    id
                    onlineStoreUrl
                    productType
                    publishedAt
                    tags
                    title
                    updatedAt
                    vendor
                    images(first: 250) {
                        edges {
                            node {
                                altText
                                id
                                originalSrc
                            }
                        }
                    }
                }
            }
        }
    }
}


''';
