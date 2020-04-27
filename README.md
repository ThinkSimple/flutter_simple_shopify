# flutter_simple_shopify

A new Flutter package which provides help in creating a mobile app of a shopify store.
Note: **This Library as of right now is not ready for production**

## How To Use

I Assume you have arleady a private app on your Shopify Store. if Not please follow [this](https://shopify.dev/docs/storefront-api/getting-started).
**At Step 6 We recommend checking every API permission** as some Queries and Mutations require permission on objects like product tags.

First of all configure the ShopifyConfig like that:
```dart
void main() {
  
  ShopifyConfig.setConfig(
      'deb6cae1ce0b86760703fccaa6b689a3', 
      'ghettologistics.myshopify.com',
      '2020-04');
  
  runApp(MyApp());
}
```

These are the four possible instances, each contains different methods which will help you with working with the Shopify Storefront API.
The Goal is to make creating an Mobile App from your Shopify Website easier.
```dart
  ShopifyAuth shopifyAuth = ShopifyAuth.instance;
    Future<ShopifyUser> createUserWithEmailAndPassword({@required String email, @required String password})
    Future<void> accessTokenDelete({String accessToken})
    Future<void> sendPasswordResetEmail({@required String email})
    Future<ShopifyUser> signInWithEmailAndPassword({@required String email, @required String password})
```
```dart    
  ShopifyStore shopifyStore = ShopifyStore.instance;
     Future<List<Product>> getAllProducts()
     Future<List<Product>> getNProducts({@required int n, @required SortKey sortKey})
     Future<String> getShopName()
     Future<Collection> getFeaturedCollection()
     Future<List<Collection>> getAllCollections()
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
    Future<void> checkoutGiftCardAppend(String checkoutId, List<String> giftCardCodes)
    Future<void> checkoutGiftCardRemove(String appliedGiftCardId, String checkoutId)
```
```dart
  ShopifyCustomer shopifyCustomer = ShopifyCustomer.instance;
     Future<void> customerAddressUpdate({String address1, String address2, String company, String city, String country, String firstName, String lastName, String phone, String province, String zip, String customerAccessToken, id})
     Future<void> createCustomer({String email, String firstName, String lastName, String password, String phoneNumber, bool acceptsMarketing})
     Future<QueryResult> customerRecover({String email})
     Future<QueryResult> getCustomer({String customerAccessToken})
     Future<QueryResult> customerUpdate({String email, String firstName, String lastName, String password, String phoneNumber, String customerAccessToken, bool acceptsMarketing})
     Future<void> customerAddressCreate({String address1, String address2, String company, String city, String country, String firstName, String lastName, String phone, String province, String zip, String customerAccessToken})
     Future<QueryResult> customerAddressDelete({String customerAccessToken, String addressId})
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
