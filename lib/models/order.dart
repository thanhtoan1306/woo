/*
 * BSD 3-Clause License

    Copyright (c) 2020, RAY OKAAH - MailTo: ray@flutterengineer.com, Twitter: Rayscode
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order.g.dart';

@JsonSerializable()
class WooOrder {
  int id;
  int parentId;
  String number;
  String orderKey;
  String createdVia;
  String version;
  String status;
  String currency;
  String dateCreated;
  String dateCreatedGmt;
  String dateModified;
  String dateModifiedGmt;
  String discountTotal;
  String discountTax;
  String shippingTotal;
  String shippingTax;
  String cartTax;
  String total;
  String totalTax;
  bool pricesIncludeTax;
  int customerId;
  String customerIpAddress;
  String customerUserAgent;
  String customerNote;
  Billing billing;
  Shipping shipping;
  String paymentMethod;
  String paymentMethodTitle;
  String transactionId;
  String datePaid;
  String datePaidGmt;
  String dateCompleted;
  String dateCompletedGmt;
  String cartHash;
  List<MetaData> metaData;
  List<LineItems> lineItems;
  List<TaxLines> taxLines;
  List<ShippingLines> shippingLines;
  List<WooOrderFeeLine> feeLines;
  List<WooOrderCouponLine> couponLines;
  List<Refunds> refunds;
  Links links;

  WooOrder(
      {@required this.id,
      this.parentId,
      this.number,
      this.orderKey,
      this.createdVia,
      this.version,
      this.status,
      this.currency,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.discountTotal,
      this.discountTax,
      this.shippingTotal,
      this.shippingTax,
      this.cartTax,
      this.total,
      this.totalTax,
      this.pricesIncludeTax,
      this.customerId,
      this.customerIpAddress,
      this.customerUserAgent,
      this.customerNote,
      this.billing,
      this.shipping,
      this.paymentMethod,
      this.paymentMethodTitle,
      this.transactionId,
      this.datePaid,
      this.datePaidGmt,
      this.dateCompleted,
      this.dateCompletedGmt,
      this.cartHash,
      this.metaData,
      this.lineItems,
      this.taxLines,
      this.shippingLines,
      this.feeLines,
      this.couponLines,
      this.refunds,
      this.links})
      : assert(id != null);
  factory WooOrder.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooOrderCouponLine {
  int id;
  String code;
  String discount;
  String discountTax;
  List<MetaData> metaData;

  WooOrderCouponLine(
      this.id, this.code, this.discount, this.discountTax, this.metaData);
  factory WooOrderCouponLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderCouponLineFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderCouponLineToJson(this);
}

@JsonSerializable()
class WooOrderFeeLine {
  int id;
  String name;
  String taxClass;
  String taxStatus;
  String total;
  String totalTax;
  List<FeeLineTax> taxes;
  List<MetaData> metaData;

  WooOrderFeeLine(this.id, this.name, this.taxClass, this.taxStatus,
      this.totalTax, this.taxes, this.metaData);
  factory WooOrderFeeLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFeeLineFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderFeeLineToJson(this);
}

@JsonSerializable()
class FeeLineTax {
  int id;
  String rateCode;
  String rateId;
  String label;
  bool compound;
  String taxTotal;
  String shippingTaxTotal;
  List<MetaData> metaData;

  FeeLineTax(this.id, this.rateCode, this.rateId, this.label, this.compound,
      this.taxTotal, this.shippingTaxTotal, this.metaData);

  factory FeeLineTax.fromJson(Map<String, dynamic> json) =>
      _$FeeLineTaxFromJson(json);
  Map<String, dynamic> toJson() => _$FeeLineTaxToJson(this);
}

@JsonSerializable()
class Billing {
  String firstName;
  String lastName;
  String company;
  String address1;
  String address2;
  String city;
  String state;
  String postcode;
  String country;
  String email;
  String phone;

  Billing(
      {this.firstName,
      this.lastName,
      this.company,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone});

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);
  Map<String, dynamic> toJson() => _$BillingToJson(this);
}

@JsonSerializable()
class Shipping {
  String firstName;
  String lastName;
  String company;
  String address1;
  String address2;
  String city;
  String state;
  String postcode;
  String country;

  Shipping(
      {this.firstName,
      this.lastName,
      this.company,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country});

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}

@JsonSerializable()
class MetaData {
  int id;
  String key;
  String value;

  MetaData({this.id, this.key, this.value});

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}

@JsonSerializable()
class Refunds {
  int id;
  String reason;
  String total;

  Refunds({this.id, this.reason, this.total});

  factory Refunds.fromJson(Map<String, dynamic> json) =>
      _$RefundsFromJson(json);
  Map<String, dynamic> toJson() => _$RefundsToJson(this);
}

@JsonSerializable()
class LineItems {
  int id;
  String name;
  int productId;
  int variationId;
  int quantity;
  String taxClass;
  String subtotal;
  String subtotalTax;
  String total;
  String totalTax;
  List<Taxes> taxes;
  List<MetaData> metaData;
  String sku;
  String price;

  LineItems(
      {this.id,
      this.name,
      this.productId,
      this.variationId,
      this.quantity,
      this.taxClass,
      this.subtotal,
      this.subtotalTax,
      this.total,
      this.totalTax,
      this.taxes,
      this.metaData,
      this.sku,
      this.price});

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);
  Map<String, dynamic> toJson() => _$LineItemsToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class Taxes {
  int id;
  String total;
  String subtotal;

  Taxes({this.id, this.total, this.subtotal});

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);
  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}

@JsonSerializable()
class TaxLines {
  int id;
  String rateCode;
  int rateId;
  String label;
  bool compound;
  String taxTotal;
  String shippingTaxTotal;
  List<MetaData> metaData;

  TaxLines(
      {this.id,
      this.rateCode,
      this.rateId,
      this.label,
      this.compound,
      this.taxTotal,
      this.shippingTaxTotal,
      this.metaData});

  factory TaxLines.fromJson(Map<String, dynamic> json) =>
      _$TaxLinesFromJson(json);
  Map<String, dynamic> toJson() => _$TaxLinesToJson(this);
}

@JsonSerializable()
class ShippingLines {
  int id;
  String methodTitle;
  String methodId;
  String total;
  String totalTax;
  List<Taxes> taxes;
  List<MetaData> metaData;

  ShippingLines(
      {this.id,
      this.methodTitle,
      this.methodId,
      this.total,
      this.totalTax,
      this.taxes,
      this.metaData});

  factory ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$ShippingLinesFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingLinesToJson(this);
}

@JsonSerializable()
class Links {
  List<Self> self;
  List<Collection> collection;

  Links({this.self, this.collection});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Self {
  String href;

  Self({this.href});

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
  Map<String, dynamic> toJson() => _$SelfToJson(this);
}

@JsonSerializable()
class Collection {
  String href;

  Collection({this.href});

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
