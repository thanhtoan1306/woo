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
import 'package:json_annotation/json_annotation.dart';
part 'order_payload.g.dart';

@JsonSerializable()
class WooOrderPayload {
  String paymentMethod;
  String paymentMethodTitle;
  bool setPaid;
  String status;
  String currency;
  int customerId;
  String customerNote;
  int parentId;
  List<WooOrderPayloadMetaData> metaData;
  List<WooOrderPayloadFeeLines> feeLines;
  List<WooOrderPayloadCouponLines> couponLines;
  WooOrderPayloadBilling billing;
  WooOrderPayloadShipping shipping;
  List<LineItems> lineItems;
  List<ShippingLines> shippingLines;

  WooOrderPayload(
      {this.paymentMethod,
      this.paymentMethodTitle,
      this.setPaid,
      this.status,
      this.currency,
      this.customerId,
      this.customerNote,
      this.parentId,
      this.metaData,
      this.feeLines,
      this.couponLines,
      this.billing,
      this.shipping,
      this.lineItems,
      this.shippingLines});

  factory WooOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooOrderPayloadMetaData {
  String key;
  String value;

  WooOrderPayloadMetaData({this.key, this.value});

  factory WooOrderPayloadMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadMetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadMetaDataToJson(this);
}

@JsonSerializable()
class WooOrderPayloadFeeLines {
  String name;
  String taxClass;
  String taxStatus;
  String total;
  List<WooOrderPayloadMetaData> metaData;

  WooOrderPayloadFeeLines(
      {this.name, this.taxClass, this.taxStatus, this.total, this.metaData});

  factory WooOrderPayloadFeeLines.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadFeeLinesFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadFeeLinesToJson(this);
}

@JsonSerializable()
class WooOrderPayloadCouponLines {
  String code;
  List<WooOrderPayloadMetaData> metaData;

  WooOrderPayloadCouponLines({this.code, this.metaData});

  factory WooOrderPayloadCouponLines.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadCouponLinesFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadCouponLinesToJson(this);
}

@JsonSerializable()
class WooOrderPayloadBilling {
  String firstName;
  String lastName;
  String address1;
  String address2;
  String city;
  String state;
  String postcode;
  String country;
  String email;
  String phone;

  WooOrderPayloadBilling(
      {this.firstName,
      this.lastName,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone});

  factory WooOrderPayloadBilling.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadBillingFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadBillingToJson(this);
}

@JsonSerializable()
class WooOrderPayloadShipping {
  String firstName;
  String lastName;
  String address1;
  String address2;
  String city;
  String state;
  String postcode;
  String country;

  WooOrderPayloadShipping(
      {this.firstName,
      this.lastName,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country});

  factory WooOrderPayloadShipping.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadShippingFromJson(json);
  Map<String, dynamic> toJson() => _$WooOrderPayloadShippingToJson(this);
}

@JsonSerializable()
class LineItems {
  int productId;
  String name;
  int variationId;
  String taxClass;
  String subtotal;
  String total;
  int quantity;

  LineItems(
      {this.productId,
      this.name,
      this.variationId,
      this.taxClass,
      this.subtotal,
      this.total,
      this.quantity});

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);
  Map<String, dynamic> toJson() => _$LineItemsToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class ShippingLines {
  String methodId;
  String methodTitle;
  String total;

  ShippingLines({this.methodId, this.methodTitle, this.total});

  factory ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$ShippingLinesFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingLinesToJson(this);
}
