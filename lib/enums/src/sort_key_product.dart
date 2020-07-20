enum SortKeyProduct {
  TITLE,
  PRODUCT_TYPE,
  VENDOR,
  UPDATED_AT,
  CREATED_AT,
  BEST_SELLING,
  PRICE,
  ID,
  RELEVANCE,
}

extension ParseToStringProduct on SortKeyProduct{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}