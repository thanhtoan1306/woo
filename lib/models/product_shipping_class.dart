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
part 'product_shipping.g.dart';

@JsonSerializable()
class WooProductShippingClass {
  int id;
  String name;
  String slug;
  String description;
  int count;
  WooProductShippingClassLinks links;

  WooProductShippingClass(
      {this.id,
      this.name,
      this.slug,
      this.description,
      this.count,
      this.links});

  factory WooProductShippingClass.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductShippingClassToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooProductShippingClassLinks {
  List<WooProductShippingClassSelf> self;
  List<WooProductShippingClassCollection> collection;

  WooProductShippingClassLinks({this.self, this.collection});

  factory WooProductShippingClassLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductShippingClassLinksToJson(this);
}

@JsonSerializable()
class WooProductShippingClassSelf {
  String href;

  WooProductShippingClassSelf({this.href});

  factory WooProductShippingClassSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassSelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductShippingClassSelfToJson(this);
}

@JsonSerializable()
class WooProductShippingClassCollection {
  String href;

  WooProductShippingClassCollection({this.href});

  factory WooProductShippingClassCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WooProductShippingClassCollectionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooProductShippingClassCollectionToJson(this);
}
