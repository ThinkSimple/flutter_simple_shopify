## [0.0.25-alpha] - 30/10/2020

* Connectivity issues throw now a more detailed error
* CheckoutCompleteFree now prints the errors directly
* getAllOrders is fixed, and the sortkey SortKeyOrder.RELEVANCE is commented out since it raised problems

## [0.0.24-alpha] - 30/10/2020

* merged various pull requests

## [0.0.23-alpha] - 10/10/2020

* Fix PriceV2 amount format, Add query to fetch Product Metafields, Fix cursor on empty list, Add checkoutCompleteFree mutation, Add reverse variable to getAllOrders. Big Thanks to @tuarrep

## [0.0.22-alpha] - 28/09/2020

* fixed customer update for real now!

## [0.0.21-alpha] - 14/09/2020

* fixed customer update (had to comment out the checkForError part because even when mutation was successful it threw an error)

## [0.0.20-alpha] - 01/09/2020

* Added a vendor to product model and various other queries, thank you zeshuaro

## [0.0.19-alpha] - 20/08/2020

* Added getProductRecommendations()
  getCollectionsByIds()
  shippingAddressUpdate()

## [0.0.11-thinkSimple] - 28/07/2020

* Bug Fix

## [0.0.10-thinkSimple] - 28/07/2020

* Bug Fix

## [0.0.9-thinkSimple] - 28/07/2020

* Bug Fix

## [0.0.18-alpha] - 28/07/2020

* additional fields for Product object.
  product.options available now - see what variant options there are and their corresponding values.
  getDeaturedCollection is now getCollectionByHandle, a wrong handle name wont crash your app, it will give a Collection object with null values.

## [0.0.17-alpha] - 11/07/2020

* Bug Fix

## [0.0.8-thinkSimple] - 08/07/2020

* Initial Load time for home screen reduced.

## [0.0.7-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.6-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.5-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.4-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.16-alpha] - 22/06/2020

* fixed the breaking bug in the last version.
* collections are fetched different now which translates directly into loading time. (way faster)

## [0.0.3-thinkSimple] - 23/06/2020

* Minor Bug fixes

## [0.0.2-thinkSimple] - 23/06/2020

* Clarification: Do not use this version, we only use it for our clients app's. The normal version has more functionality!

## [0.0.1-thinkSimple] - 22/06/2020

* version just for our purpose

## [0.0.15-alpha] - 22/06/2020

* added reverse to every possible function that fetches lists.
* fixed a problem where one had to make sure every legal field has information in it. (e.g. not having any text in privacy policy would cause problems)
* fixed a problem where creating a user account with existing email address would not throw proper error message.
* parameters reverse and deletePartofCache are optional now.
* added collection sortKey

had to delete the example folder, will add in the new version again.

## [0.0.14-alpha] - 14/05/2020

* added example

## [0.0.13-alpha] - 14/05/2020

* added example

## [0.0.12-alpha] - 14/05/2020

* Price property now has a currency symbol, and a formatted price. also, you can now reverse the list at getNProducts()

## [0.0.11-alpha] - 14/05/2020

* 0.0.11- Products now have images and some other minor changes

## [0.0.10-alpha] - 14/05/2020

* now checking for query/mutation errors and throwing exceptions if something bad happens

## [0.0.9-alpha] - 09/05/2020

* minor changes

## [0.0.8-alpha] - 08/05/2020

* new Shop model, made adding lineitems to checkout easier

## [0.0.7-alpha] - 07/05/2020

* new User model, created all login functionality

## [0.0.6-alpha] - 04/05/2020

* added 2 new methods and new enum, changed parameters

## [0.0.5-alpha] - 02/05/2020

* fixed a minor bug @ getCheckoutInfoQuery and added 2 new methods

## [0.0.4-alpha] - 02/05/2020

* added null checks on the models.

## [0.0.3-alpha] - 02/05/2020

* added ShopifyBlog with 3 new methods.

## [0.0.2-alpha] - 26/04/2020

* added 3 new methods - not production ready

## [0.0.1-alpha] - 24/04/2020

* initial release - not production ready
