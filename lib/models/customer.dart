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
part 'customer.g.dart';

@JsonSerializable()
class WooCustomer {
  int id;
  String dateCreated;
  String dateCreatedGmt;
  String dateModified;
  String dateModifiedGmt;
  String email;
  String firstName;
  String lastName;
  String role;
  String username;
  String password;
  Billing billing;
  Shipping shipping;
  bool isPayingCustomer;
  String avatarUrl;
  List<WooCustomerMetaData> metaData;
  Links links;

  WooCustomer(
      {this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.email,
      this.firstName,
      this.lastName,
      this.role,
      this.username,
      this.password,
      this.billing,
      this.shipping,
      this.isPayingCustomer,
      this.avatarUrl,
      this.metaData,
      this.links});

  factory WooCustomer.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerFromJson(json);
  Map<String, dynamic> toJson() => _$WooCustomerToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooCustomerMetaData {
  final int id;
  final String key;
  final dynamic value;

  WooCustomerMetaData(this.id, this.key, this.value);
  factory WooCustomerMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerMetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$WooCustomerMetaDataToJson(this);
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
