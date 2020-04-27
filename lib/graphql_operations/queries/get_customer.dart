const String getCustomerQuery = r'''
query($customerAccessToken : String!){
  customer(customerAccessToken: $customerAccessToken) {
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
    displayName
    email
    tags
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
    }
  }
}

''';