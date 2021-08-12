const String getShopQuery = r'''
query getShop {
  shop {
    description
    moneyFormat
    name
    paymentSettings {
      acceptedCardBrands
      cardVaultUrl
      countryCode
      currencyCode
      enabledPresentmentCurrencies
      supportedDigitalWallets
      shopifyPaymentsAccountId
    }
    primaryDomain {
      host
      sslEnabled
      url
    }
    privacyPolicy {
      body
      handle
      id
      title
      url
    }
    refundPolicy {
      body
      handle
      id
      title
      url
    }
    shipsToCountries
    termsOfService {
      body
      handle
      id
      title
      url
    }
  }
}''';