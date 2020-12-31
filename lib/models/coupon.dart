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
part 'coupon.g.dart';

@JsonSerializable()
class WooCoupon {
  int id;
  String code;
  String amount;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String discountType;
  String description;
  String dateExpires;
  String dateExpiresGmt;
  int usageCount;
  bool individualUse;
  List<int> productIds;
  List<int> excludedProductIds;
  int usageLimit;
  int usageLimitPerUser;
  int limitUsageToXItems;
  bool freeShipping;
  List<int> productCategories;
  List<int> excludedProductCategories;
  bool excludeSaleItems;
  String minimumAmount;
  String maximumAmount;
  List<String> emailRestrictions;
  List<String> usedBy;
  List<String> metaData;
  WooCouponLinks lLinks;

  WooCoupon(
      {this.id,
      this.code,
      this.amount,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.discountType,
      this.description,
      this.dateExpires,
      this.dateExpiresGmt,
      this.usageCount,
      this.individualUse,
      this.productIds,
      this.excludedProductIds,
      this.usageLimit,
      this.usageLimitPerUser,
      this.limitUsageToXItems,
      this.freeShipping,
      this.productCategories,
      this.excludedProductCategories,
      this.excludeSaleItems,
      this.minimumAmount,
      this.maximumAmount,
      this.emailRestrictions,
      this.usedBy,
      this.metaData,
      this.lLinks});
  factory WooCoupon.fromJson(Map<String, dynamic> json) =>
      _$WooCouponFromJson(json);
  Map<String, dynamic> toJson() => _$WooCouponToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooCouponLinks {
  List<Self> self;
  List<Collection> collection;

  WooCouponLinks({this.self, this.collection});
  factory WooCouponLinks.fromJson(Map<String, dynamic> json) =>
      _$WooCouponLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooCouponLinksToJson(this);
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

@JsonSerializable()
class CouponMetadata {
  int id;
  String key;
  String value;

  CouponMetadata({this.key, this.value});

  factory CouponMetadata.fromJson(Map<String, dynamic> json) =>
      _$CouponMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$CouponMetadataToJson(this);
}
