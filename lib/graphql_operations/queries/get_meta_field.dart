const String getMetaField = r'''
query ProductMetafields($ownerId : ID!){
  product(id: $ownerId) {
    metafields(namespace: "wildfox", first: 50) {
      edges {
        node {
          id
          namespace
          key
          value
          valueType
          description
        }
      }
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
          selectedOptions {
            name
            value
          }
        }
      }
    }
  }
}
''';
