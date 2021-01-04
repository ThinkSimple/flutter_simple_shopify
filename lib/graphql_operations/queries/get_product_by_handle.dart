const String getProductByHandleQuery = r'''
query($handle: String!) {
    productByHandle(handle: $handle) {

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

''';
