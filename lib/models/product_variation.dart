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
part 'product_variation.g.dart';

@JsonSerializable()
class WooProductVariation {
  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String description;
  String permalink;
  String sku;
  String price;
  String regularPrice;
  String salePrice;
  DateTime dateOnSaleFrom;
  DateTime dateOnSaleFromGmt;
  DateTime dateOnSaleTo;
  DateTime dateOnSaleToGmt;
  bool onSale;
  String status;
  bool purchasable;
  bool virtual;
  bool downloadable;
  List<WooProductVariationDownload> downloads;
  int downloadLimit;
  int downloadExpiry;
  String taxStatus;
  String taxClass;
  bool manageStock;
  int stockQuantity;
  String stockStatus;
  String backorders;
  bool backordersAllowed;
  bool backordered;
  List<WooProductVariationAttribute> attributes;
  String weight;
  String shippingClass;
  int shippingClassId;
  int menuOrder;
  WooProductVariationDimension dimensions;
  List<WooProductVariationMetaData> metaData;
  WooProductVariationImage image;

  WooProductVariation(
      this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.description,
      this.permalink,
      this.sku,
      this.price,
      this.attributes,
      this.regularPrice,
      this.salePrice,
      this.dateOnSaleFrom,
      this.dateOnSaleFromGmt,
      this.dateOnSaleTo,
      this.dateOnSaleToGmt,
      this.onSale,
      this.status,
      this.purchasable,
      this.virtual,
      this.downloadable,
      this.downloads,
      this.downloadLimit,
      this.downloadExpiry,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockQuantity,
      this.stockStatus,
      this.backorders,
      this.backordersAllowed,
      this.backordered,
      this.weight,
      this.shippingClass,
      this.shippingClassId,
      this.menuOrder,
      this.dimensions,
      this.metaData,
      this.image);

  factory WooProductVariation.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationToJson(this);
}


@JsonSerializable()
class WooProductVariationMetaData {
  final int id;
  final String key;
  final String value;

  WooProductVariationMetaData(this.id, this.key, this.value);

  factory WooProductVariationMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationMetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationMetaDataToJson(this);
}

@JsonSerializable()
class WooProductVariationCategory {
  final int id;
  final String name;
  final String slug;

  WooProductVariationCategory(this.id, this.name, this.slug);

  factory WooProductVariationCategory.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationCategoryToJson(this);
}

@JsonSerializable()
class WooProductVariationDimension {
  final String length;
  final String width;
  final String height;

  WooProductVariationDimension(this.length, this.height, this.width);

  factory WooProductVariationDimension.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationDimensionFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationDimensionToJson(this);
}

@JsonSerializable()
class WooProductVariationAttribute {
  final int id;
  final String name;
  final String option;

  WooProductVariationAttribute(this.id, this.name, this.option);

  factory WooProductVariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationAttributeToJson(this);
}

@JsonSerializable()
class WooProductVariationDownload {
  final String id;
  final String name;
  final String file;

  WooProductVariationDownload(this.id, this.name, this.file);

  factory WooProductVariationDownload.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationDownloadFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationDownloadToJson(this);
}

@JsonSerializable()
class WooProductVariationImage {
  final int id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String src;
  final String name;
  final String alt;

  WooProductVariationImage(
      this.id,
      this.src,
      this.name,
      this.alt,
      this.dateCreated,
      this.dateCreatedGMT,
      this.dateModified,
      this.dateModifiedGMT);

  factory WooProductVariationImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationImageFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductVariationImageToJson(this);
}
