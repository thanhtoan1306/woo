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
part 'product_attributes.g.dart';

@JsonSerializable()
class WooProductAttribute {
  int id;
  String name;
  String slug;
  String type;
  String orderBy;
  bool hasArchives;
  WooProductAttributeTermLinks links;

  WooProductAttribute(
      {this.id,
      this.name,
      this.slug,
      this.type,
      this.orderBy,
      this.hasArchives,
      this.links});

  factory WooProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductAttributeToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooProductAttributeTermLinks {
  List<WooProductAttributeTermSelf> self;
  List<WooProductAttributeTermCollection> collection;

  WooProductAttributeTermLinks({this.self, this.collection});

  factory WooProductAttributeTermLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeTermLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductAttributeTermLinksToJson(this);
}

@JsonSerializable()
class WooProductAttributeTermSelf {
  String href;

  WooProductAttributeTermSelf({this.href});

  factory WooProductAttributeTermSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeTermSelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductAttributeTermSelfToJson(this);
}

@JsonSerializable()
class WooProductAttributeTermCollection {
  String href;

  WooProductAttributeTermCollection({this.href});

  factory WooProductAttributeTermCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WooProductAttributeTermCollectionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooProductAttributeTermCollectionToJson(this);
}
