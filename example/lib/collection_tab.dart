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
      appBar: AppBar(title: Text("Collections")),
      body: Center(
        child: _isLoading ? CircularProgressIndicator() :
        ListView.builder(
          itemCount: collections.length,
            itemBuilder: (_,int index) => ListTile(
              onTap: () => _navigateToCollectionDetailScreen(collections[index].id,collections[index].title),
              title: Text(collections[index].title),
            ),
        ),
      ),
    );
  }

  Future<void> _fetchCollections() async {
    try{
      ShopifyStore shopifyStore = ShopifyStore.instance;
      final collections = await shopifyStore.getAllCollections();
      if(mounted){
        setState(() {
          this.collections = collections;
          _isLoading = false;
        });
      }
    }catch(e){
      print(e);
    }
  }

  void _navigateToCollectionDetailScreen(String collectionId,String collectionTitle){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => CollectionDetailScreen(
            collectionId: collectionId,
            collectionTitle: collectionTitle)));
  }
}

class CollectionDetailScreen extends StatefulWidget {
  final String collectionId;
  final String collectionTitle;

  const CollectionDetailScreen({Key key,@required this.collectionId,@required this.collectionTitle})
      : super(key: key);
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
      appBar: AppBar(title: Text(widget.collectionTitle),),
      body: Center(
        child: _isLoading ? CircularProgressIndicator() :
        ListView.builder(
          itemCount: products.length,
            itemBuilder: (_,int index) =>
                ListTile(title: Text(products[index].title),)),
      ),
    );
  }

  Future<void> _fetchProductsByCollectionId() async{
    try{
      ShopifyStore shopifyStore = ShopifyStore.instance;
      final products = await shopifyStore.getXProductsAfterCursorWithinCollection(
        widget.collectionId,
        4,
        null
      );
      if(mounted){
        setState(() {
          this.products = products.productList;
          _isLoading = false;
        });
      }
    }catch(e){
      print(e);
    }
  }
}

