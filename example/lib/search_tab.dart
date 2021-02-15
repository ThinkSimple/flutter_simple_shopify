import 'package:flutter/material.dart';
import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _controller = TextEditingController(text: "");
  List<Product> products = [];
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: "Search...",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      )),
                ),
                Padding(padding: const EdgeInsets.all(8)),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => _searchForProduct(_controller.text)),
              ],
            ),
            Padding(padding: const EdgeInsets.all(10)),
            Center(
              child: _isLoading ? CircularProgressIndicator() : Column(
                children: _buildProductList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _searchForProduct(String searchKeyword) async {
    setState(() {
      _isLoading = true;
    });
    try {
      ShopifyStore shopifyStore = ShopifyStore.instance;
      final products = await shopifyStore.getXProductsOnQueryAfterCursor(
        searchKeyword,
        4,
        null,
        sortKey: SortKeyProduct.RELEVANCE,
      );
      if (mounted) {
        setState(() {
          this.products = products;
          _isLoading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  List<Widget> _buildProductList() {
    List<Widget> widgetList = [];
    products.forEach((product) => widgetList.add(ListTile(
          title: Text(product.title),
        )));
    return widgetList;
  }
}
