enum OrderCancelReason {
  CUSTOMER,
  DECLINED,
  FRAUD,
  INVENTORY,
  OTHER,
}
extension ParseToStringOrderCancelReason on OrderCancelReason{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}

enum OrderFulfillmentStatus {
  FULFILLED,
  IN_PROGRESS,
  OPEN,
  PARTIALLY_FULFILLED,
  PENDING_FULFILLMENT,
  RESTOCKED,
  UNFULFILLED,
}
extension ParseToStringOrderFulfillmentStatus on OrderFulfillmentStatus{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}

enum OrderFinancialStatus {
  AUTHORIZED,
  PAID,
  PARTIALLY_PAID,
  PARTIALLY_REFUNDED,
  PENDING,
  REFUNDED,
  VOIDED,
}
extension ParseToStringOrderFinancialStatus on OrderFinancialStatus{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}

