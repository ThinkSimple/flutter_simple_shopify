enum SortKeyArticle {
  TITLE,
  BLOG_TITLE,
  AUTHOR,
  UPDATED_AT,
  PUBLISHED_AT,
  ID,
  RELEVANCE
}

extension ParseToStringArticle on SortKeyArticle{
  String parseToString(){
    return this.toString().split('.')[1];
  }
}