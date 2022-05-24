const String allowStoreFrontApiMutation = r'''
mutation {
  metafieldStorefrontVisibilityCreate(
    input: {
      namespace: "wildfox"
      key: "country_of_origin"
      ownerType: PRODUCT
    }
  ) {
    metafieldStorefrontVisibility {
      id
      key
      namespace
      value
    }
    userErrors {
      field
      message
    }
  }
}
''';