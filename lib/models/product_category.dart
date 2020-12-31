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
part 'product_category.g.dart';

@JsonSerializable()
class WooProductCategory {
  int id;
  String name;
  String slug;
  int parent;
  String description;
  String display;
  WooProductCategoryImage image;
  int menuOrder;
  int count;
  WooProductCategoryLinks links;

  WooProductCategory(
      {this.id,
      this.name,
      this.slug,
      this.parent,
      this.description,
      this.display,
      this.image,
      this.menuOrder,
      this.count,
      this.links});

  factory WooProductCategory.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategoryToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooProductCategoryImage {
  int id;
  String dateCreated;
  String dateCreatedGmt;
  String dateModified;
  String dateModifiedGmt;
  String src;
  String name;
  String alt;

  WooProductCategoryImage(
      {this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.src,
      this.name,
      this.alt});

  factory WooProductCategoryImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryImageFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategoryImageToJson(this);
}

@JsonSerializable()
class WooProductCategoryLinks {
  List<WooProductCategorySelf> self;
  List<WooProductCategoryCollection> collection;

  WooProductCategoryLinks({this.self, this.collection});

  factory WooProductCategoryLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategoryLinksToJson(this);
}

@JsonSerializable()
class WooProductCategorySelf {
  String href;

  WooProductCategorySelf({this.href});

  factory WooProductCategorySelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategorySelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategorySelfToJson(this);
}

@JsonSerializable()
class WooProductCategoryCollection {
  String href;

  WooProductCategoryCollection({this.href});

  factory WooProductCategoryCollection.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductCategoryCollectionToJson(this);
}
