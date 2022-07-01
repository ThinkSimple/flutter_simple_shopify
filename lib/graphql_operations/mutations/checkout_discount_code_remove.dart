const String checkoutDiscountCodeRemoveMutation = r'''
mutation checkoutDiscountCodeRemove($checkoutId : ID!) {
  checkoutDiscountCodeRemove(checkoutId: $checkoutId) {
    checkout {
      id
      email
      requiresShipping
      currencyCode
      webUrl
      orderStatusUrl
      shippingLine {
        handle
        title
        priceV2 {
          amount
          currencyCode
        }
      }
      shippingAddress {
        address1
        address2
        city
        company
        country
        countryCodeV2
        firstName
        formattedArea
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
      appliedGiftCards {
        amountUsedV2 {
          amount
          currencyCode
        }
        balanceV2 {
          amount
          currencyCode
        }
        lastCharacters
        id
      }
      discountApplications(first: 10) {
        edges {
          node {
            allocationMethod
            targetSelection
            targetType
            value {
              ... on MoneyV2 {
                amount
                currencyCode
              }
              ... on PricingPercentageValue {
                percentage
              }
            }
          }
        }
      }
      lineItemsSubtotalPrice {
        amount
        currencyCode
      }
      paymentDueV2 {
        amount
        currencyCode
      }
      taxesIncluded
      totalTaxV2 {
        amount
        currencyCode
      }
      totalPriceV2 {
        amount
        currencyCode
      }
      subtotalPriceV2 {
        amount
        currencyCode
      }
    }
    checkoutUserErrors {
      code
      field
      message
    }
  }
}''';