const String customerCreateMutation = r''' 
mutation MyMutation($firstName: String, $lastName: String, $email: String!, $password: String!) {
  customerCreate(input: {firstName: $firstName, lastName: $lastName, email: $email, password: $password}) {
    customer{
      acceptsMarketing
    addresses(first: 10) {
      edges {
        node {
          address1
          address2
          city
          company
          country
          countryCodeV2
          firstName
          id
          lastName
          latitude
          longitude
          name
          phone
          province
          provinceCode
          zip
        }
      }
    }
    createdAt
    defaultAddress {
      address1
      address2
      city
      company
      country
      countryCodeV2
      firstName
      id
      lastName
      latitude
      longitude
      name
      phone
      province
      zip
      provinceCode
    }
    tags
    displayName
    email
    firstName
    id
    lastIncompleteCheckout {
        completedAt
        createdAt
        currencyCode
        email
        id
        webUrl
        totalPriceV2 {
          amount
          currencyCode
        }
        lineItemsSubtotalPrice {
          amount
          currencyCode
        }
        lineItems(first: 250) {
          edges {
            node {
              id
              quantity
              title
              discountAllocations {
               allocatedAmount {
                 amount
                currencyCode
               }
              }
              variant {
                priceV2 {
                  amount
                  currencyCode
                }
                title
                image {
                  altText
                  id
                  originalSrc
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
                id
              }
            }
          }
        }
      }
  }
  customerUserErrors {
      code
      field
      message
    }
  }
}
''';
