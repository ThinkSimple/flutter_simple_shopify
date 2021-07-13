import 'package:flutter/material.dart';
import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';

class CollectionTab extends StatefulWidget {
  @override
  _CollectionTabState createState() => _CollectionTabState();
}

class _CollectionTabState extends State<CollectionTab> {
  List<Collection> collections = [];
  bool _isLoading = true;

  @override
  void initState() {
    _fetchCollections();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: collections.length,
                itemBuilder: (_, int index) => ListTile(
                  onTap: () => _navigateToCollectionDetailScreen(
                      collections[index].id, collections[index].title),
                  title: Text(collections[index].title),
                ),
              ),
      ),
    );
  }

  Future<void> _fetchCollections() async {
    try {
      final shopifyStore = ShopifyStore.instance;
      final collections = await shopifyStore.getAllCollections();
      if (mounted) {
        setState(() {
          this.collections = collections;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint(e);
    }
  }

  void _navigateToCollectionDetailScreen(
      String collectionId, String collectionTitle) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CollectionDetailScreen(
                collectionId: collectionId, collectionTitle: collectionTitle)));
  }
}

class CollectionDetailScreen extends StatefulWidget {
  const CollectionDetailScreen(
      {Key key, @required this.collectionId, @required this.collectionTitle})
      : super(key: key);
  final String collectionId;
  final String collectionTitle;

  @override
  _CollectionDetailScreenState createState() => _CollectionDetailScreenState();
}

class _CollectionDetailScreenState extends State<CollectionDetailScreen> {
  List<Product> products = [];
  bool _isLoading = true;

  @override
  void initState() {
    _fetchProductsByCollectionId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collectionTitle),
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: products.length,
                itemBuilder: (_, int index) => ListTile(
                      title: Text(products[index].title),
                    )),
      ),
    );
  }

  Future<void> _fetchProductsByCollectionId() async {
    try {
      final shopifyStore = ShopifyStore.instance;
      final products =
          await shopifyStore.getXProductsAfterCursorWithinCollection(
        widget.collectionId,
        4,
        startCursor: null,
        sortKey: SortKeyProductCollection.RELEVANCE,
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
}
