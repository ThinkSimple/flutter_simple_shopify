enum SortKeyPage { UPDATED_AT, TITLE, ID, RELEVANCE }

extension ParseToStringPage on SortKeyPage {
  String parseToString() {
    return this.toString().split('.')[1];
  }
}
