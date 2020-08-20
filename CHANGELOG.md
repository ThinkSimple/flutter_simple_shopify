## [0.0.1-alpha] - 24/04/2020

* initial release - not production ready

## [0.0.2-alpha] - 26/04/2020

* added 3 new methods - not production ready

## [0.0.3-alpha] - 02/05/2020

* added ShopifyBlog with 3 new methods. 

## [0.0.4-alpha] - 02/05/2020

* added null checks on the models. 

## [0.0.5-alpha] - 02/05/2020

* fixed a minor bug @ getCheckoutInfoQuery and added 2 new methods

## [0.0.6-alpha] - 04/05/2020

* added 2 new methods and new enum, changed parameters

## [0.0.7-alpha] - 07/05/2020

* new User model, created all login functionality

## [0.0.8-alpha] - 08/05/2020

* new Shop model, made adding lineitems to checkout easier

## [0.0.9-alpha] - 09/05/2020

* minor changes

## [0.0.10-alpha] - 14/05/2020

* now checking for query/mutation errors and throwing exceptions if something bad happens

## [0.0.11-alpha] - 14/05/2020

* 0.0.11- Products now have images and some other minor changes

## [0.0.12-alpha] - 14/05/2020

* Price property now has a currency symbol and a formatted price. also you can now reverse the list at getNProducts()

## [0.0.13-alpha] - 14/05/2020

* added example

## [0.0.14-alpha] - 14/05/2020

* added example

## [0.0.15-alpha] - 22/06/2020

* added reverse to every possible function that fetches lists.
* fixed problem where one had to make sure every legal field has information in it. (eg. not having any text in privacy policy would cause problems)
* fixed problem where creating a user account with exisitng email adress would not throw proper error message.
* parameters reverse and deletePartofCache are optional now.
* added collection sortKey

had to delete the example folder, will add in new version again.

## [0.0.1-thinkSimple] - 22/06/2020

* version just for our purpose

## [0.0.2-thinkSimple] - 23/06/2020

* Clarification: Do not use this version, we only use it for our clients app's. The normal version has more functionality!

## [0.0.3-thinkSimple] - 23/06/2020

* Minor Bug fixes

## [0.0.16-alpha] - 22/06/2020

* fixed the breaking bug in the last version.
* collections are fetched different now which translates directly into loading time. (way faster)

## [0.0.4-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.5-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.6-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.7-thinkSimple] - 29/06/2020

* Minor Bug fixes

## [0.0.8-thinkSimple] - 08/07/2020

* Initial Load time for home screen reduced.

## [0.0.17-alpha] - 11/07/2020

* Bug Fix

## [0.0.18-alpha] - 28/07/2020

* additional fields for Product object.
product.options available now - see what variant options there are and their corresponding values.
getDeaturedCollection is now getCollectionByHandle, a wrong handle name wont crash your app, it will give a Collection object with null values.

## [0.0.9-thinkSimple] - 28/07/2020

* Bug Fix

## [0.0.10-thinkSimple] - 28/07/2020

* Bug Fix

## [0.0.11-thinkSimple] - 28/07/2020

* Bug Fix