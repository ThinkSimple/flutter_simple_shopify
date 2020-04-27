const String checkoutDiscountCodeApplyMutation = r'''
mutation checkoutDiscountCodeApply($checkoutId : ID!, $discountCode : String!) {
  checkoutDiscountCodeApplyV2(checkoutId: $checkoutId, discountCode: $discountCode) {
    checkoutUserErrors {
      message
      field
      code
    }
  }
}
''';