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

import 'product_category.dart';
import 'package:json_annotation/json_annotation.dart';
part 'products.g.dart';

@JsonSerializable()
class WooProduct {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final String type;
  final String status;
  final bool featured;
  final String catalogVisibility;
  final String description;
  final String shortDescription;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final String priceHtml;
  final bool onSale;
  final bool purchasable;
  final int totalSales;
  final bool virtual;
  final bool downloadable;
  final List<WooProductDownload> downloads;
  final int downloadLimit;
  final int downloadExpiry;
  final String externalUrl;
  final String buttonText;
  final String taxStatus;
  final String taxClass;
  final bool manageStock;
  final int stockQuantity;
  final String stockStatus;
  final String backorders;
  final bool backordersAllowed;
  final bool backordered;
  final bool soldIndividually;
  final String weight;
  final WooProductDimension dimensions;
  final bool shippingRequired;
  final bool shippingTaxable;
  final String shippingClass;
  final int shippingClassId;
  final bool reviewsAllowed;
  final String averageRating;
  final int ratingCount;
  final List<int> relatedIds;
  final List<int> upsellIds;
  final List<int> crossSellIds;
  final int parentId;
  final String purchaseNote;
  final List<WooProductCategory> categories;
  final List<WooProductItemTag> tags;
  final List<WooProductImage> images;
  final List<WooProductItemAttribute> attributes;
  final List<WooProductDefaultAttribute> defaultAttributes;
  final List<int> variations;
  final List<int> groupedProducts;
  final int menuOrder;
  final List<MetaData> metaData;

  WooProduct(
      this.id,
      this.name,
      this.slug,
      this.permalink,
      this.type,
      this.status,
      this.featured,
      this.catalogVisibility,
      this.description,
      this.shortDescription,
      this.sku,
      this.price,
      this.regularPrice,
      this.salePrice,
      this.priceHtml,
      this.onSale,
      this.purchasable,
      this.totalSales,
      this.virtual,
      this.downloadable,
      this.downloads,
      this.downloadLimit,
      this.downloadExpiry,
      this.externalUrl,
      this.buttonText,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockQuantity,
      this.stockStatus,
      this.backorders,
      this.backordersAllowed,
      this.backordered,
      this.soldIndividually,
      this.weight,
      this.dimensions,
      this.shippingRequired,
      this.shippingTaxable,
      this.shippingClass,
      this.shippingClassId,
      this.reviewsAllowed,
      this.averageRating,
      this.ratingCount,
      this.relatedIds,
      this.upsellIds,
      this.crossSellIds,
      this.parentId,
      this.purchaseNote,
      this.categories,
      this.tags,
      this.images,
      this.attributes,
      this.defaultAttributes,
      this.variations,
      this.groupedProducts,
      this.menuOrder,
      this.metaData);
  factory WooProduct.fromJson(Map<String, dynamic> json) =>
      _$WooProductFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductToJson(this);
}

@JsonSerializable()
class WooProductItemTag {
  final int id;
  final String name;
  final String slug;

  WooProductItemTag(this.id, this.name, this.slug);

  factory WooProductItemTag.fromJson(Map<String, dynamic> json) =>
      _$WooProductItemTagFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductItemTagToJson(this);
}

@JsonSerializable()
class MetaData {
  final int id;
  final String key;
  final String value;

  MetaData(this.id, this.key, this.value);
  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}

@JsonSerializable()
class WooProductDefaultAttribute {
  final int id;
  final String name;
  final String option;

  WooProductDefaultAttribute(this.id, this.name, this.option);

  factory WooProductDefaultAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductDefaultAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDefaultAttributeToJson(this);
}

@JsonSerializable()
class WooProductImage {
  final int id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String src;
  final String name;
  final String alt;

  WooProductImage(this.id, this.src, this.name, this.alt, this.dateCreated,
      this.dateCreatedGMT, this.dateModified, this.dateModifiedGMT);

  factory WooProductImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductImageFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductImageToJson(this);
}

/**
class Category {
  final int id;
  final String name;
  final String slug;

  Category(this.id, this.name, this.slug);

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        slug = json['slug'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
      };
  @override toString() => toJson().toString();
}
*/

@JsonSerializable()
class WooProductDimension {
  final String length;
  final String width;
  final String height;

  WooProductDimension(this.length, this.height, this.width);

  factory WooProductDimension.fromJson(Map<String, dynamic> json) =>
      _$WooProductDimensionFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDimensionToJson(this);
}

@JsonSerializable()
class WooProductItemAttribute {
  final int id;
  final String name;
  final int position;
  final bool visible;
  final bool variation;
  final List<String> options;

  WooProductItemAttribute(this.id, this.name, this.position, this.visible,
      this.variation, this.options);

  factory WooProductItemAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductItemAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductItemAttributeToJson(this);
}

@JsonSerializable()
class WooProductDownload {
  final String id;
  final String name;
  final String file;

  WooProductDownload(this.id, this.name, this.file);

  factory WooProductDownload.fromJson(Map<String, dynamic> json) =>
      _$WooProductDownloadFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductDownloadToJson(this);
}
