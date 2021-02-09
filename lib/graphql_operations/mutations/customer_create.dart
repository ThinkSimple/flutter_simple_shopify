const String customerCreateMutation = r''' 
mutation MyMutation(
  $firstName: String!
  $lastName: String!
  $email: String!
  $password: String!
) {
  customerCreate(
    input: {
      firstName: $firstName
      lastName: $lastName
      email: $email
      password: $password
    }
  ) {
    customer {
      id
      email
      firstName
      lastName
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
    }
    customerUserErrors {
      code
      field
      message
    }
  }
}

''';
