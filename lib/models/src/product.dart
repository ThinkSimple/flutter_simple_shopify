import 'package:intl/intl.dart';

class Products {
  final List<Product> productList;
  final bool hasNextPage;

  Products({this.productList, this.hasNextPage});

  static Products fromJson(Map<String, dynamic> json) {
    return Products(
        productList: _getProductList(json ?? const {}),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Product> _getProductList(Map<String, dynamic> json) {
    List<Product> productList = [];
    json['edges']
        ?.forEach((e) => productList.add(Product.fromJson(e ?? const {})));
    return productList;
  }
}

class Product {
  final List<AssociatedCollections> collectionList;
  final String title;
  final String id;
  final bool availableForSale;
  final String createdAt;
  final String description;
  final List<ProductVariant> productVariants;
  final String descriptionHtml;
  final String handle;
  final String onlineStoreUrl;
  final String productType;
  final String publishedAt;
  final List<String> tags;
  final String updatedAt;
  final String cursor;
  final List<ShopifyImage> images;
  final List<Option> option;
  final String vendor;
  final List<Metafield> metafields;

  const Product(
      {this.collectionList,
        this.title,
        this.id,
        this.availableForSale,
        this.createdAt,
        this.description,
        this.productVariants,
        this.descriptionHtml,
        this.handle,
        this.onlineStoreUrl,
        this.productType,
        this.publishedAt,
        this.tags,
        this.updatedAt,
        this.cursor,
        this.images,
        this.option,
        this.vendor,
        this.metafields});

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
        collectionList: _getCollectionList(json ?? const {}),
        id: (json['node'] ?? const {})['id'],
        title: (json['node'] ?? const {})['title'],
        availableForSale: (json['node'] ?? const {})['availableForSale'],
        createdAt: (json['node'] ?? const {})['createdAt'],
        description: (json['node'] ?? const {})['description'],
        productVariants: _getProductVariants(json ?? const {}),
        descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
        handle: (json['node'] ?? const {})['handle'],
        onlineStoreUrl: (json['node'] ?? const {})['onlineStoreUrl'],
        productType: (json['node'] ?? const {})['productType'],
        publishedAt: (json['node'] ?? const {})['publishedAt'],
        tags: _getTags(json ?? const {}),
        updatedAt: (json['node'] ?? const {})['updatedAt'],
        images: _getImageList((json['node'] ?? const {})['images'] ?? const {}),
        cursor: json['cursor'],
        option: _getOptionList((json['node'] ?? const {})),
        vendor: (json['node'] ?? const {})['vendor'],
        metafields: _getMetafieldList((json['node'] ?? const {})['metafields'] ?? const {}));
  }

  static List<ProductVariant> _getProductVariants(Map<String, dynamic> json) {
    List<ProductVariant> productVariants = [];
    (((json['node'] ?? const {})['variants'] ?? const {})['edges'] ?? const [])
        ?.forEach((v) {
      if (v?.data != null)
        productVariants.add(ProductVariant.fromJson(v?.data ?? const {}));
    });
    return productVariants;
  }


  static List<Option> _getOptionList(Map<String, dynamic> json) {
    List<Option> optionList = [];
    json['options']?.forEach((v) {
      if (v != null)
        optionList.add(Option.fromJson(v ?? const {}));
    });
    return optionList;
  }

  static List<String> _getTags(Map<String, dynamic> json) {
    List<String> tags = [];
    (json['node'] ?? const {})['tags']?.forEach((e) => tags.add(e ?? const {}));
    return tags;
  }

  static List<AssociatedCollections> _getCollectionList(
      Map<String, dynamic> json) {
    List<AssociatedCollections> collectionList = [];
    (((json['node'] ?? const {})['collections'] ?? const {})['edges'] ??
        const [])
        ?.forEach((v) {
      if (v?.data != null)
        collectionList.add(AssociatedCollections.fromJson(v?.data ?? const {}));
    });
    return collectionList;
  }

  static _getImageList(Map<String, dynamic> json) {
    List<ShopifyImage> imageList = [];
    if (json != null && json['edges'] != null)
    json['edges'].forEach((image) => imageList.add(ShopifyImage.fromJson(image['node'] ?? const {})));
    return imageList;
  }

  static _getMetafieldList(Map<String, dynamic> json) {
    List<Metafield> metafieldList = [];
    json['edges']?.forEach((metafield) => metafieldList.add(Metafield.fromJson(metafield ?? const {})));
    return metafieldList;
  }
}

class AssociatedCollections {
  final String description;
  final String descriptionHtml;
  final String id;
  final String handle;
  final String updatedAt;
  final String title;

  AssociatedCollections(
      {this.description,
        this.descriptionHtml,
        this.id,
        this.handle,
        this.updatedAt,
        this.title});

  static AssociatedCollections fromJson(Map<String, dynamic> json) {
    return AssociatedCollections(
        description: (json['node'] ?? const {})['description'],
        descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
        id: (json['node'] ?? const {})['id'],
        handle: (json['node'] ?? const {})['handle'],
        updatedAt: (json['node'] ?? const {})['updatedAt'],
        title: (json['node'] ?? const {})['title']);
  }
}

class ShopifyImage {
  final String altText;
  final String originalSource;
  final String id;

  const ShopifyImage({this.altText, this.originalSource, this.id});

  static ShopifyImage fromJson(Map<String, dynamic> json) {
    return ShopifyImage(
        altText: json['altText'],
        originalSource: json['originalSrc'],
        id: json['id']);
  }
}

class ProductVariant {
  final PriceV2 price;
  final String title;
  final ShopifyImage image;
  final PriceV2 compareAtPrice;
  final double weight;
  final String weightUnit;
  final bool availableForSale;
  final String sku;
  final bool requiresShipping;
  final String id;
  final int quantityAvailable;
  final PriceV2 unitPrice;
  final UnitPriceMeasurement unitPriceMeasurement;

  const ProductVariant(
      {this.price,
        this.title,
        this.image,
        this.compareAtPrice,
        this.weight,
        this.weightUnit,
        this.availableForSale,
        this.sku,
        this.requiresShipping,
        this.id,
        this.quantityAvailable,
        this.unitPrice,
        this.unitPriceMeasurement});

  static ProductVariant fromJson(Map<String, dynamic> json) {
    return ProductVariant(
      price:
      PriceV2.fromJson((json['node'] ?? const {})['priceV2'] ?? const {}),
      title: (json['node'] ?? const {})['title'],
      image: ShopifyImage.fromJson(
          (json['node'] ?? const {})['image'] ?? const {}),
      compareAtPrice: PriceV2.fromJson(
          (json['node'] ?? const {})['compareAtPriceV2'] ?? const {}),
      weight: (json['node'] ?? const {})['weight'],
      weightUnit: (json['node'] ?? const {})['weightUnit'],
      availableForSale: (json['node'] ?? const {})['availableForSale'],
      sku: (json['node'] ?? const {})['sku'],
      requiresShipping: (json['node'] ?? const {})['requiresShipping'],
      id: (json['node'] ?? const {})['id'],
      quantityAvailable: (json['node'] ?? const {})['quantityAvailable'],
      unitPrice:
          PriceV2.fromJson((json['node'] ?? const {})['unitPrice'] ?? const {}),
      unitPriceMeasurement: UnitPriceMeasurement.fromJson(
          (json['node'] ?? const {})['unitPriceMeasurement'] ?? const {}),
    );
  }
}

class Metafield {
  final String id;
  final String namespace;
  final String key;
  final String value;
  final String valueType;
  final String description;

  const Metafield(
      {this.id,
      this.namespace,
      this.key,
      this.value,
      this.valueType,
      this.description});

  static Metafield fromJson(Map<String, dynamic> json) {
    return Metafield(
        id: (json['node'] ?? const {})['id'],
        namespace: (json['node'] ?? const {})['namespace'],
        key: (json['node'] ?? const {})['key'],
        value: (json['node'] ?? const {})['value'],
        valueType: (json['node'] ?? const {})['valueType'],
        description: (json['node'] ?? const {})['description']);
  }
}

class Option {
  final String id;
  final String name;
  final List<String> values;

  Option({this.id, this.name, this.values});

  static Option fromJson(Map<String, dynamic> json) {
    return Option(
        id: json['id'] ?? "",
        name: json['name'] ?? "",
        values: _getValueList(json)
    );
  }

  static List<String> _getValueList(Map<String, dynamic> json) {
    List<String> values = [];
    json['values']?.forEach((e) => values.add(e ?? ""));
    return values;
  }
}

class PriceV2 {
  static NumberFormat priceFormat;
  final double amount;
  final String currencyCode;
  final String currencySymbol;
  final String formattedPrice;

  const PriceV2({this.formattedPrice, this.currencySymbol, this.amount, this.currencyCode});

  static PriceV2 fromJson(Map<String, dynamic> json) {
    return PriceV2(
        amount: json['amount'] != null ? double.parse(json['amount']) : null,
        currencyCode: json['currencyCode'],
        currencySymbol: _simpleCurrencySymbols[json['currencyCode']],
        formattedPrice: _chooseRightOrderOnCurrencySymbol(
          json,
          priceFormat: priceFormat,
        ),
    );
  }

  static String _chooseRightOrderOnCurrencySymbol(
    Map<String, dynamic> json, {
    NumberFormat priceFormat,
  }) {
    String currencyString;
    String formattedPrice = priceFormat?.format(
            json['amount'] != null ? double.parse(json['amount']) : 0) ??
        json['amount'].toString();
    switch(json['currencyCode']) {
      case "INR": {
        currencyString = '${_simpleCurrencySymbols[json['currencyCode']]} $formattedPrice';
      }
      break;

      case "EUR": {
        currencyString = '$formattedPrice ${_simpleCurrencySymbols[json['currencyCode']]}';
      }
      break;
      case "USD": {
        currencyString = '${_simpleCurrencySymbols[json['currencyCode']]} $formattedPrice';
      }
      break;

      default: {
        currencyString = '$formattedPrice ${_simpleCurrencySymbols[json['currencyCode']]}';
      }
      break;
    }
    return currencyString;
  }

  static final Map<String, String> _simpleCurrencySymbols = {
    'AFN': 'Af.',
    'TOP': r'T$',
    'MGA': 'Ar',
    'THB': '\u0e3f',
    'PAB': 'B/.',
    'ETB': 'Birr',
    'VEF': 'Bs',
    'BOB': 'Bs',
    'GHS': 'GHS',
    'CRC': '\u20a1',
    'NIO': r'C$',
    'GMD': 'GMD',
    'MKD': 'din',
    'BHD': 'din',
    'DZD': 'din',
    'IQD': 'din',
    'JOD': 'din',
    'KWD': 'din',
    'LYD': 'din',
    'RSD': 'din',
    'TND': 'din',
    'AED': 'dh',
    'MAD': 'dh',
    'STD': 'Db',
    'BSD': r'$',
    'FJD': r'$',
    'GYD': r'$',
    'KYD': r'$',
    'LRD': r'$',
    'SBD': r'$',
    'SRD': r'$',
    'AUD': r'$',
    'BBD': r'$',
    'BMD': r'$',
    'BND': r'$',
    'BZD': r'$',
    'CAD': r'$',
    'HKD': r'$',
    'JMD': r'$',
    'NAD': r'$',
    'NZD': r'$',
    'SGD': r'$',
    'TTD': r'$',
    'TWD': r'NT$',
    'USD': r'$',
    'XCD': r'$',
    'VND': '\u20ab',
    'AMD': 'Dram',
    'CVE': 'CVE',
    'EUR': '\u20ac',
    'AWG': 'Afl.',
    'HUF': 'Ft',
    'BIF': 'FBu',
    'CDF': 'FrCD',
    'CHF': 'CHF',
    'DJF': 'Fdj',
    'GNF': 'FG',
    'RWF': 'RF',
    'XOF': 'CFA',
    'XPF': 'FCFP',
    'KMF': 'CF',
    'XAF': 'FCFA',
    'HTG': 'HTG',
    'PYG': 'Gs',
    'UAH': '\u20b4',
    'PGK': 'PGK',
    'LAK': '\u20ad',
    'CZK': 'K\u010d',
    'SEK': 'kr',
    'ISK': 'kr',
    'DKK': 'kr',
    'NOK': 'kr',
    'HRK': 'kn',
    'MWK': 'MWK',
    'ZMK': 'ZWK',
    'AOA': 'Kz',
    'MMK': 'K',
    'GEL': 'GEL',
    'LVL': 'Ls',
    'ALL': 'Lek',
    'HNL': 'L',
    'SLL': 'SLL',
    'MDL': 'MDL',
    'RON': 'RON',
    'BGN': 'lev',
    'SZL': 'SZL',
    'TRY': 'TL',
    'LTL': 'Lt',
    'LSL': 'LSL',
    'AZN': 'man.',
    'BAM': 'KM',
    'MZN': 'MTn',
    'NGN': '\u20a6',
    'ERN': 'Nfk',
    'BTN': 'Nu.',
    'MRO': 'MRO',
    'MOP': 'MOP',
    'CUP': r'$',
    'CUC': r'$',
    'ARS': r'$',
    'CLF': 'UF',
    'CLP': r'$',
    'COP': r'$',
    'DOP': r'$',
    'MXN': r'$',
    'PHP': '\u20b1',
    'UYU': r'$',
    'FKP': '£',
    'GIP': '£',
    'SHP': '£',
    'EGP': 'E£',
    'LBP': 'L£',
    'SDG': 'SDG',
    'SSP': 'SSP',
    'GBP': '£',
    'SYP': '£',
    'BWP': 'P',
    'GTQ': 'Q',
    'ZAR': 'R',
    'BRL': r'R$',
    'OMR': 'Rial',
    'QAR': 'Rial',
    'YER': 'Rial',
    'IRR': 'Rial',
    'KHR': 'Riel',
    'MYR': 'RM',
    'SAR': 'Riyal',
    'BYR': 'BYR',
    'RUB': 'руб.',
    'MUR': 'Rs',
    'SCR': 'SCR',
    'LKR': 'Rs',
    'NPR': 'Rs',
    'INR': '\u20b9',
    'PKR': 'Rs',
    'IDR': 'Rp',
    'ILS': '\u20aa',
    'KES': 'Ksh',
    'SOS': 'SOS',
    'TZS': 'TSh',
    'UGX': 'UGX',
    'PEN': 'S/.',
    'KGS': 'KGS',
    'UZS': 'so\u02bcm',
    'TJS': 'Som',
    'BDT': '\u09f3',
    'WST': 'WST',
    'KZT': '\u20b8',
    'MNT': '\u20ae',
    'VUV': 'VUV',
    'KPW': '\u20a9',
    'KRW': '\u20a9',
    'JPY': '¥',
    'CNY': '¥',
    'PLN': 'z\u0142',
    'MVR': 'Rf',
    'NLG': 'NAf',
    'ZMW': 'ZK',
    'ANG': 'ƒ',
    'TMT': 'TMT',
  };

}

class UnitPriceMeasurement {
  final String measuredType;
  final String quantityUnit;
  final double quantityValue;
  final String referenceUnit;
  final int referenceValue;

  UnitPriceMeasurement({
    this.measuredType,
    this.quantityUnit,
    this.quantityValue,
    this.referenceUnit,
    this.referenceValue,
  });

  static UnitPriceMeasurement fromJson(Map<String, dynamic> json) {
    return UnitPriceMeasurement(
      measuredType: json['measuredType'],
      quantityUnit: json['quantityUnit'],
      quantityValue: json['quantityValue'],
      referenceUnit: json['referenceUnit'],
      referenceValue: json['referenceValue'],
    );
  }
}
