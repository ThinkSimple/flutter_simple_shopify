enum SortKeyOrder {
  PROCESSED_AT,
  TOTAL_PRICE,
  ID,
  RELEVANCE
}

extension ParseToStringOrder on SortKeyOrder{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}