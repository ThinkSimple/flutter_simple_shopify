import 'package:flutter_simple_shopify/models/src/order.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';

import '../../flutter_simple_shopify.dart';

class Checkout {
  final String? id;
  final String? email;
  final DiscountApplications discountApplications;
  final List<AppliedGiftCards> appliedGiftcards;
  final AvailableShippingRates? availableShippingrates;
  final ShippingRate shippingLine;
  final MailingAddress shippingAddress;
  final String? completedAt;
  final String? createdAt;
  final String? currencyCode;
  final LineItems lineItems;
  final String? note;
  final String? webUrl;
  final String? updatedAt;
  final PriceV2 lineItemsSubtotalPrice;
  final PriceV2 discountAmount;
  final PriceV2 paymentDueV2;
  final PriceV2 totalTaxV2;
  final PriceV2 totalPriceV2;
  final bool? taxesIncluded;
  final bool? taxExempt;
  final PriceV2 subtotalPriceV2;
  final String? orderStatusUrl;
  final Order? order;
  final bool? requiresShipping;

  Checkout(
      {this.id,
      this.email,
      required this.discountApplications,
      required this.appliedGiftcards,
      this.availableShippingrates,
      required this.shippingLine,
      required this.shippingAddress,
      this.completedAt,
      this.createdAt,
      this.currencyCode,
      required this.lineItems,
      this.note,
      this.webUrl,
      this.updatedAt,
      required this.totalTaxV2,
      required this.totalPriceV2,
      required this.lineItemsSubtotalPrice,
      required this.discountAmount,
      required this.paymentDueV2,
      this.taxesIncluded,
      this.taxExempt,
      required this.subtotalPriceV2,
      this.orderStatusUrl,
      this.order,
      this.requiresShipping});

  static Checkout fromJson(Map<String, dynamic> json) {
    bool? taxesIncluded = json['taxesIncluded'];
    PriceV2 totalTaxV2 = PriceV2.fromJson(json['totalTaxV2'] ?? const {});
    PriceV2 lineItemsSubtotalPrice =
        PriceV2.fromJson(json['lineItemsSubtotalPrice'] ?? const {});
    PriceV2 totalPriceV2 = PriceV2.fromJson(json['totalPriceV2'] ?? const {});
    ShippingRate shippingLine =
        ShippingRate.fromJson(json['shippingLine'] ?? const {});
    String? amount;
    String? currencyCode;
    if (lineItemsSubtotalPrice.amount != null && totalPriceV2.amount != null) {
      double amt = (totalPriceV2.amount! - lineItemsSubtotalPrice.amount!);
      if (totalTaxV2.amount != null && !taxesIncluded!) {
        amt -= totalTaxV2.amount!;
      }
      if (shippingLine.priceV2.amount != null) {
        amt -= shippingLine.priceV2.amount!;
      }
      amount = amt.abs().toStringAsFixed(2);
      currencyCode = totalPriceV2.currencyCode;
    }
    return Checkout(
        id: json['id'],
        email: json['email'],
        discountApplications:
            DiscountApplications.fromJson(json['discountApplications']),
        appliedGiftcards: _getAppliedGiftCards(json),
        availableShippingrates: AvailableShippingRates.fromJson(
            json['availableShippingRates'] ?? const {}),
        shippingLine: shippingLine,
        shippingAddress:
            MailingAddress.fromJson(json['shippingAddress'] ?? const {}),
        completedAt: json['completedAt'],
        createdAt: json['createdAt'],
        currencyCode: json['currencyCode'],
        lineItems: json['lineItems'] != null ? LineItems.fromJson(json['lineItems']) : LineItems(lineItemList:[]),
        note: json['note'],
        webUrl: json['webUrl'],
        updatedAt: json['updatedAt'],
        lineItemsSubtotalPrice: lineItemsSubtotalPrice,
        discountAmount: PriceV2.fromJson(
            {'amount': amount, 'currencyCode': currencyCode}),
        paymentDueV2: PriceV2.fromJson(json['paymentDueV2'] ?? const {}),
        totalTaxV2: totalTaxV2,
        totalPriceV2: totalPriceV2,
        taxesIncluded: taxesIncluded,
        taxExempt: json['taxExempt'],
        subtotalPriceV2: PriceV2.fromJson(json['subtotalPriceV2'] ?? const {}),
        orderStatusUrl: json['orderStatusUrl'],
        order: json['order']!=null ? Order.fromJson(json['order']) : null,
        requiresShipping: json['requiresShipping']);
  }

  static List<AppliedGiftCards> _getAppliedGiftCards(
      Map<String, dynamic> json) {
    List<AppliedGiftCards> appliedGiftCardsList = [];
    json['appliedGiftCards']?.forEach((e) =>
        appliedGiftCardsList.add(AppliedGiftCards.fromJson(e ?? const {})));
    return appliedGiftCardsList;
  }
}

class AvailableShippingRates {
  final bool? ready;
  final List<ShippingRate> shippingRates;

  const AvailableShippingRates({this.ready, required this.shippingRates});

  static AvailableShippingRates fromJson(Map<String, dynamic> json) {
    return AvailableShippingRates(
      ready: json['ready'],
      shippingRates: _getShippingRates(json),
    );
  }

  static List<ShippingRate> _getShippingRates(Map<String, dynamic> json) {
    List<ShippingRate> shippingRatesList = [];
    json['shippingRates']?.forEach(
        (e) => shippingRatesList.add(ShippingRate.fromJson(e ?? const {})));
    return shippingRatesList;
  }
}

class ShippingRate {
  final String? handle;
  final String? title;
  final PriceV2 priceV2;

  ShippingRate({this.handle, this.title, required this.priceV2});

  static ShippingRate fromJson(Map<String, dynamic> json) {
    return ShippingRate(
        handle: json['handle'],
        title: json['title'],
        priceV2: PriceV2.fromJson(json['priceV2'] ?? const {}));
  }
}

class MailingAddress {
  final String? address1;
  final String? address2;
  final String? city;
  final String? company;
  final String? country;
  final String? countryCodeV2;
  final String? firstName;
  final String? formattedArea;
  final String? id;
  final String? lastName;
  final double? latitude;
  final double? longitude;
  final String? name;
  final String? phone;
  final String? province;
  final String? provinceCode;
  final String? zip;

  MailingAddress(
      {this.address1,
      this.address2,
      this.city,
      this.company,
      this.country,
      this.countryCodeV2,
      this.firstName,
      this.formattedArea,
      this.id,
      this.lastName,
      this.latitude,
      this.longitude,
      this.name,
      this.phone,
      this.province,
      this.provinceCode,
      this.zip});

  static MailingAddress fromJson(Map<String, dynamic> json) {
    return MailingAddress(
      address1: json['address1'],
      address2: json['address2'],
      city: json['city'],
      company: json['company'],
      country: json['country'],
      countryCodeV2: json['countryCodeV2'],
      firstName: json['firstName'],
      formattedArea: json['formattedArea'],
      id: json['id'],
      lastName: json['lastName'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      name: json['name'],
      phone: json['phone'],
      province: json['province'],
      provinceCode: json['provinceCode'],
      zip: json['zip'],
    );
  }
}

class LineItems {
  final List<LineItem> lineItemList;

  LineItems({required this.lineItemList});

  static LineItems fromJson(Map<String, dynamic> json) {
    return LineItems(lineItemList: _getLineItemList(json));
  }

  static List<LineItem> _getLineItemList(Map<String, dynamic> json) {
    List<LineItem> lineItemList = [];
    json['edges']?.forEach((lineItem) =>
        lineItemList.add(LineItem.fromJson(lineItem ?? const {})));
    return lineItemList;
  }
}

class LineItem {
  final String? id;
  final int? quantity;
  final String? title;
  final ProductVariantCheckout? variant;

  LineItem({this.id, this.quantity, this.variant, this.title});

  static LineItem fromJson(Map<String, dynamic> json) {
    return LineItem(
      id: (json['node'] ?? const {})['id'],
      quantity: (json['node'] ?? const {})['quantity'],
      variant: ProductVariantCheckout.fromJson(
          ((json['node'] ?? const {})['variant'] ?? const {})),
      title: (json['node'] ?? const {})['title'],
    );
  }
}

class DiscountApplications {
  final List<DiscountApplication> discountApplicationList;

  DiscountApplications({required this.discountApplicationList});

  get length => discountApplicationList.length;

  static DiscountApplications fromJson(Map<String, dynamic>? json) {
    return DiscountApplications(
        discountApplicationList: _getDiscountApplicationList(json));
  }

  static List<DiscountApplication> _getDiscountApplicationList(
      Map<String, dynamic>? json) {
    List<DiscountApplication> discountApplicationList = [];
    if (json != null)
      json['edges']?.forEach((discountApplication) => discountApplicationList
          .add(DiscountApplication.fromJson(discountApplication ?? const {})));
    return discountApplicationList;
  }
}

class DiscountApplication {
  final String? allocationMethod;
  final String? targetSelection;
  final String? targetType;
  final double? percentage;
  final PriceV2 price;

  DiscountApplication(
      {this.allocationMethod,
      this.targetSelection,
      this.targetType,
      this.percentage,
      required this.price});

  static DiscountApplication fromJson(Map<String, dynamic> json) {
    // print(json);
    return DiscountApplication(
      allocationMethod: (json['node'] ?? const {})['allocationMethod'],
      targetSelection: (json['node'] ?? const {})['targetSelection'],
      targetType: (json['node'] ?? const {})['targetType'],
      percentage:
          (((json['node'] ?? const {})['value'] ?? const {})['percentage'] ??
              null),
      price:
          PriceV2.fromJson(((json['node'] ?? const {})['value'] ?? const {})),
    );
  }
}

class ProductVariantCheckout {
  final PriceV2 price;
  final String? title;
  final ShopifyImage image;
  final PriceV2 compareAtPrice;
  final double? weight;
  final String? weightUnit;
  final bool? availableForSale;
  final String? sku;
  final bool? requiresShipping;
  final String? id;
  final Product? product;

  const ProductVariantCheckout(
      {required this.price,
      this.title,
      required this.image,
      required this.compareAtPrice,
      this.weight,
      this.weightUnit,
      this.availableForSale,
      this.sku,
      this.requiresShipping,
      this.id, 
      this.product});

  static ProductVariantCheckout fromJson(Map<String, dynamic> json) {
    print('object');
    return ProductVariantCheckout(
      price: PriceV2.fromJson(json['priceV2'] ?? const {}),
      title: json['title'],
      image: ShopifyImage.fromJson(json['image'] ?? const {}),
      compareAtPrice: PriceV2.fromJson(json['compareAtPriceV2'] ?? const {}),
      weight: json['weight'],
      weightUnit: json['weightUnit'],
      availableForSale: json['availableForSale'],
      sku: json['sku'],
      requiresShipping: json['requiresShipping'],
      id: json['id'],
      product: json['product'] !=null ? Product.fromProductHandleJson(json['product']) : null
    );
  }
}

class AppliedGiftCards {
  final PriceV2 amountUsedV2;
  final PriceV2 balanceV2;
  final String lastCharacters;
  final String? id;

  AppliedGiftCards({required this.amountUsedV2, required this.balanceV2, required this.lastCharacters, this.id});

  static AppliedGiftCards fromJson(Map<String, dynamic> json) {
    return AppliedGiftCards(
        amountUsedV2: PriceV2.fromJson(json['amountUsedV2'] ?? const {}),
        balanceV2: PriceV2.fromJson(json['balanceV2'] ?? const {}),
        lastCharacters: json['lastCharacters'],
        id: json['id']);
  }
}
