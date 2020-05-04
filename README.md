# flutter_simple_shopify

A new Flutter package which provides help in creating a mobile app of a shopify store.
Note: **This library as of right now is not ready for production**

## How To Use

I Assume you have already a private app on your Shopify store. if not please follow [this](https://shopify.dev/docs/storefront-api/getting-started).
**At step 6 we recommend checking every API permission** as some queries and mutations require permission on objects like product tags.

First of all configure the ShopifyConfig like that:
```dart
void main() {
  
  ShopifyConfig.setConfig(
      'de16cae1ce0b86260703fccaa6b689a3', // Storefront API access token.
      'exampleShopname.myshopify.com', // Store url.
      '2020-04'); // The Shopify Storefront API version.
  
  runApp(MyApp());
}
```

These are the four possible instances, each contains different methods which will help you with working with the Shopify Storefront API.
The goal is to make creating an mobile app from your Shopify website easier.
```dart
  ShopifyAuth shopifyAuth = ShopifyAuth.instance;
    Future<ShopifyUser> createUserWithEmailAndPassword({@required String email, @required String password})
    Future<void> accessTokenDelete({String accessToken})
    Future<void> sendPasswordResetEmail({@required String email})
    Future<ShopifyUser> signInWithEmailAndPassword({@required String email, @required String password})
```
```dart    
  ShopifyStore shopifyStore = ShopifyStore.instance;
     Future<List<Product>> getProductsByIds()
     Future<List<Product>> getXProductsAfterCursor(int limit,String startCursor)
     Future<List<Product>> getAllProducts()
     Future<List<Product>> getNProducts({@required int n, @required SortKey sortKey})
     Future<String> getShopName()
     Future<Collection> getFeaturedCollection()
     Future<List<Collection>> getAllCollections()
     Future<List<Product>> getXProductsAfterCursorWithinCollection(String id, int limit, String startCursor, SortKeyProduct sortKey)
     Future<List<Product>> getAllProductsFromCollectionById(String id)
```
```dart
  ShopifyCheckout shopifyCheckout = ShopifyCheckout.instance;
    Future<Checkout> getCheckoutInfoQuery({String checkoutId})
    Future<List<Order>> getAllOrders({String customerAccessToken})
    Future<void> checkoutLineItemsReplace({String checkoutId, List<Map<String,dynamic>> checkoutLineItems})
    Future<void> checkoutCustomerAssociate({String checkoutId, String customerAccessToken}) 
    Future<void> checkoutCustomerDisassociate({String checkoutId})
    Future<void> checkoutDiscountCodeApply({String checkoutId, String discountCode})
    Future<void> checkoutDiscountCodeRemove({String checkoutId})
    Future<String> createCheckout()
    Future<void> checkoutGiftCardAppend(String checkoutId, List<String> giftCardCodes)
    Future<void> checkoutGiftCardRemove(String appliedGiftCardId, String checkoutId)
```
```dart
  ShopifyCustomer shopifyCustomer = ShopifyCustomer.instance;
     Future<void> customerAddressUpdate({String address1, String address2, String company, String city, String country, String firstName, String lastName, String phone, String province, String zip, String customerAccessToken, id})
     Future<void> getCustomer({String customerAccessToken})
     Future<void> customerUpdate({String email, String firstName, String lastName, String password, String phoneNumber, String customerAccessToken, bool acceptsMarketing})
     Future<void> customerAddressCreate({String address1, String address2, String company, String city, String country, String firstName, String lastName, String phone, String province, String zip, String customerAccessToken})
     Future<void> customerAddressDelete({String customerAccessToken, String addressId})
       
```
```dart
  ShopifyBlog shopifyBlog = ShopifyBlog.instance;
     Future<List<Blog>> getAllBlogs()
     Future<Blog> getBlogByHandle(String handle, SortKeyArticle sortKeyArticle)
     Future<List<Article>> getXArticlesSorted({int articleAmount, SortKeyArticle sortKeyArticle})
```

Above you see the instance on top and the possible methods and functions which you can use.

### Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
