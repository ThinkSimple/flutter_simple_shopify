const String completeCheckoutVisa = r'''
mutation MyMutation {
  checkoutCompleteWithTokenizedPaymentV2(checkoutId: "Z2lkOi8vc2hvcGlmeS9DaGVja291dC83OTliZDNmNTBkZDJmMTgwYWRkYTcxNDIyNDliNmZlNT9rZXk9NzFlM2UzNDMyZGI1ZmIxNDdjYzIzZGRhMjEyOGZhMzg=", payment: {paymentAmount: {amount: "1.00", currencyCode: EUR}, idempotencyKey: "1223356", billingAddress: {firstName: "dave", lastName: "smith", address1: "billrothstraße 62", province: "hamburg", city: "hamburg", country: "germany", zip: "22767"}, paymentData: "tok_1GTR0MFybpdELA6GGXFR1gch", type: "card"}) {
    checkout {
      id
      completedAt
      createdAt
    }
    checkoutUserErrors {
      code
      field
      message
    }
    payment {
      amountV2 {
        amount
        currencyCode
      }
      test
      id
    }
  }
}

''';

// checkout id : Z2lkOi8vc2hvcGlmeS9DaGVja291dC8zZmM4MGZjNzU1MWJmZDViOGRlYjY1ZjBjMmQ5YWJjYT9rZXk9N2QzNzFiNTAwMzEyNGY4OTBhNDAyYzRlZjY1YjM3MmI=
// customer token : 86d8e9194d3c26b8ba510d392cc08ebe
//