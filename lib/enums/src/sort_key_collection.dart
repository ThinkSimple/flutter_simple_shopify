enum SortKeyCollection {
  UPDATED_AT,
  TITLE,
  ID,
  RELEVANCE
}

extension ParseToStringCollection on SortKeyCollection{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}