import 'package:flutter/material.dart';
import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _controller = TextEditingController(text: '');
  List<Product> products = [];
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
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
                        labelText: 'Search...',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(),
                        ),
                        //fillColor: Colors.green
                      )),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () => _searchForProduct(_controller.text)),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Center(
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : Column(
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
      final shopifyStore = ShopifyStore.instance;
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
      debugPrint(e);
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
