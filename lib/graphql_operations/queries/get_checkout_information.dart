const String getCheckoutInfo =
  '''
query(\$id: ID!) {
  node(id: \$id) {
    ... on Checkout {
      id
      email
      requiresShipping
      currencyCode
      webUrl
      orderStatusUrl
      order {
          id
          email
          currencyCode
          customerUrl
          name
          orderNumber
          phone
          processedAt
          canceledAt
          cancelReason
          financialStatus
          fulfillmentStatus
          statusUrl
          lineItems(first: 250) {
            edges {
              node {
                title
                variant {
                  id
                  title
                  availableForSale
                  priceV2 {
                    amount
                    currencyCode
                  }
                  image {
                    altText
                    id
                    originalSrc
                    transformedSrc(maxWidth: 200, crop: CENTER)
                  }
                }
              }
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
          subtotalPriceV2 {
            amount
            currencyCode
          }
          totalPriceV2 {
            amount
            currencyCode
          }
          totalRefundedV2 {
            amount
            currencyCode
          }
          totalShippingPriceV2 {
            amount
            currencyCode
          }
          totalTaxV2 {
            amount
            currencyCode
          }
      }
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
      lineItems(first: 10) {
        edges {
          node {
            id
            quantity
            title
            variant {
              id
              priceV2 {
                amount
                currencyCode
              }
              title
              image {
                altText
                originalSrc
                transformedSrc(maxWidth: 200, crop: CENTER)
                id
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
            }
          }
        }
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
  }
}

''';


/* availableShippingRates {
        ready
        shippingRates {
          handle
          title
          priceV2 {
            amount
            currencyCode
       }}}

 */
