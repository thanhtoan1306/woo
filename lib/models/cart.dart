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
part 'cart.g.dart';

@JsonSerializable()
class WooCart {
  String currency;
  int itemCount;
  List<WooCartItems> items;
  bool needsShipping;
  String totalPrice;
  int totalWeight;

  WooCart(
      {this.currency,
      this.itemCount,
      this.items,
      this.needsShipping,
      this.totalPrice,
      this.totalWeight});
  factory WooCart.fromJson(Map<String, dynamic> json) =>
      _$WooCartFromJson(json);
  Map<String, dynamic> toJson() => _$WooCartToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooCartItems {
  String key;
  int id;
  int quantity;
  String name;
  String sku;
  String permalink;
  List<WooCartImages> images;
  String price;
  String linePrice;
  List<String> variation;

  WooCartItems(
      {this.key,
      this.id,
      this.quantity,
      this.name,
      this.sku,
      this.permalink,
      this.images,
      this.price,
      this.linePrice,
      this.variation});
  factory WooCartItems.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemsFromJson(json);
  Map<String, dynamic> toJson() => _$WooCartItemsToJson(this);
}

@JsonSerializable()
class WooCartImages {
  String id;
  String src;
  String thumbnail;
  String srcset;
  String sizes;
  String name;
  String alt;

  WooCartImages(
      {this.id,
      this.src,
      this.thumbnail,
      this.srcset,
      this.sizes,
      this.name,
      this.alt});

  factory WooCartImages.fromJson(Map<String, dynamic> json) =>
      _$WooCartImagesFromJson(json);
  Map<String, dynamic> toJson() => _$WooCartImagesToJson(this);
}
