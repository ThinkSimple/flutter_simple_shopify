# flutter_simple_shopify

[![pub package](https://img.shields.io/pub/v/flutter_simple_shopify.svg)](https://pub.dev/packages/flutter_simple_shopify)
![Build](https://github.com/ThinkSimple/flutter_simple_shopify/workflows/Build/badge.svg)


A new Flutter package which provides help in creating a mobile app of a shopify store.
Note: **This library as of right now is not ready for production**
**however** we finished creating our own app and used the library.
There are still minor bugs here and there but we advise everyone to start using the library and post as many issues as possible.
If there are questions about the usage feel free to hit us up on our mail address.

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

These are the five possible instances, each contains different methods which will help you with working with the Shopify Storefront API.
The goal is to make creating an mobile app from your Shopify website easier.
```dart
  ShopifyAuth shopifyAuth = ShopifyAuth.instance;
    Future<ShopifyUser> createUserWithEmailAndPassword({@required String email, @required String password})
    Future<void> signOutCurrentUser()
    Future<void> sendPasswordResetEmail({@required String email})
    Future<ShopifyUser> signInWithEmailAndPassword({@required String email, @required String password})
    Future<ShopifyUser> currentUser()
```
```dart    
  ShopifyStore shopifyStore = ShopifyStore.instance;
     Future<List<Product>> getProductsByIds()
     Future<List<Product>> getXProductsAfterCursor(int limit,String startCursor)
     Future<List<Product>> getAllProducts()
     Future<List<Product>> getNProducts({@required int n, @required SortKey sortKey})
     Future<Shop> getShop()
     Future<Collection> getFeaturedCollection()
     Future<List<Collection>> getAllCollections()
     Future<List<Product>> getXProductsAfterCursorWithinCollection(String id, int limit, String startCursor, SortKeyProduct sortKey)
     Future<List<Product>> getAllProductsFromCollectionById(String id)
     Future<List<Product>> getAllProductsOnQuery(String cursor, SortKeyProduct sortKey, String query)
     Future<List<Product>> getXProductsOnQueryAfterCursor(String cursor, int limit, SortKeyProduct sortKey, String query)
     Future<List<Metafield>> getMetafieldsFromProduct(String productHandle, {String namespace})
```
```dart
  ShopifyCheckout shopifyCheckout = ShopifyCheckout.instance;
    Future<Checkout> getCheckoutInfoQuery({String checkoutId})
    Future<Checkout> getCheckoutInfoWithAvailableShippingRatesQuery({String checkoutId})
    Future<List<Order>> getAllOrders({String customerAccessToken})
    Future<void> checkoutLineItemsReplace({String checkoutId, List<Map<String,dynamic>> checkoutLineItems})
    Future<void> checkoutCustomerAssociate({String checkoutId, String customerAccessToken}) 
    Future<void> checkoutCustomerDisassociate({String checkoutId})
    Future<void> checkoutDiscountCodeApply({String checkoutId, String discountCode})
    Future<void> checkoutDiscountCodeRemove({String checkoutId})
    Future<String> createCheckout()
    Future<void> checkoutGiftCardAppend(String checkoutId, List<String> giftCardCodes)
    Future<void> checkoutGiftCardRemove(String appliedGiftCardId, String checkoutId)
    Future<void> shippingLineUpdate(String checkoutId, String shippingRateHandle)
    Future<void> checkoutCompleteFree(String checkoutId)
    Future<void> updateAttributes(String checkoutId, {bool allowPartialAddresses, Map<String, String> customAttributes, String note})
```
```dart
  ShopifyCustomer shopifyCustomer = ShopifyCustomer.instance;
     Future<void> customerAddressUpdate({String address1, String address2, String company, String city, String country, String firstName, String lastName, String phone, String province, String zip, String customerAccessToken, id})
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

#### Contribution

Everybody can contribute and is invited to do so!
Important: if you add a new field to a model please consider also adding this to every mutation/query that is associated with the model.
eg. adding a new field to Checkout which is the webUrl, now you will need to go through the various queries/mutations and search for "Checkout" and add webUrl to each one of those.
(adding a new field to a Model also requires you to update the fromJson)

Also I would like to thank everyone who contributed so far!
