const String checkoutGiftCardsAppendMutation = r'''
mutation checkoutGiftCardsAppend($checkoutId : ID!, $giftCardCodes : [String!]!) {
  checkoutGiftCardsAppend(checkoutId: $checkoutId, giftCardCodes: $giftCardCodes) {
    checkoutUserErrors {
      code
      field
      message
    }
  }
}
''';