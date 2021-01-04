enum SortKeyOrder {
  PROCESSED_AT,
  TOTAL_PRICE,
  ID,
  //RELEVANCE DOESNT WORK!
}

extension ParseToStringOrder on SortKeyOrder{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}