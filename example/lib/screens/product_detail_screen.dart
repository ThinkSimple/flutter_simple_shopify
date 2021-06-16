import 'package:flutter/material.dart';
import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';
import 'package:flutter_simple_shopify/models/src/checkout/line_item/line_item.dart';
import 'package:flutter_simple_shopify/models/src/checkout/responses/checkout_response.dart';
import 'package:flutter_simple_shopify/models/src/product/product_variant/product_variant.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key key, @required this.product})
      : super(key: key);
  final Product product;

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState(product);
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  _ProductDetailScreenState(this.product);
  final Product product;
  String checkoutId;
  String checkoutUrl;
  List<LineItem> lineItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: ListView(
        children: <Widget>[
          product?.images?.first?.originalSrc != null
              ? Image.network(
                  product.images.first.originalSrc,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                )
              : Container(),
          Column(
            children: _buildProductVariants(),
          )
        ],
      ),
    );
  }

  List<Widget> _buildProductVariants() {
    List<Widget> widgetList = [];
    product.productVariants.forEach((variant) => widgetList.add(ListTile(
          title: Text(variant.title),
          subtitle: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _addProductToShoppingCart(variant)),
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () =>
                      _removeProductFromShoppingCart(lineItems.first))
            ],
          ),
          trailing: Text(variant.price.amount.toString()),
        )));
    return widgetList;
  }

  ///Adds a product variant to the checkout
  Future<void> _addProductToShoppingCart(ProductVariant variant) async {
    ShopifyCheckout shopifyCheckout = ShopifyCheckout.instance;

    if (checkoutId == null) {
      CheckoutResponse response = await shopifyCheckout.createCheckout([
        LineItem(
            title: variant.title,
            id: variant.id,
            quantity: 1,
            discountAllocations: [])
      ]);
      setState(() {
        checkoutId = response.id;
        checkoutUrl = response.webUrl;
        lineItems = response.lineItems;
      });
    } else {
      CheckoutResponse response = await shopifyCheckout.addLineItemsToCheckout(
          checkoutId: checkoutId,
          lineItems: [
            LineItem(title: variant.title, id: variant.id, quantity: 1)
          ]);
    }
  }

  Future<void> _removeProductFromShoppingCart(LineItem lineItem) async {
    ShopifyCheckout shopifyCheckout = ShopifyCheckout.instance;

    print(lineItem.id);

    CheckoutResponse response = await shopifyCheckout
        .removeLineItemsFromCheckout(
            checkoutId: checkoutId, lineItems: [lineItem]);
  }
}
