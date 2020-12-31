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
part 'tax_rate.g.dart';

@JsonSerializable()
class WooTaxRate {
  int id;
  String country;
  String state;
  String postcode;
  String city;
  String rate;
  String name;
  int priority;
  bool compound;
  bool shipping;
  int order;
  String taxClass;
  WooTaxRateLinks links;

  WooTaxRate(
      {this.id,
      this.country,
      this.state,
      this.postcode,
      this.city,
      this.rate,
      this.name,
      this.priority,
      this.compound,
      this.shipping,
      this.order,
      this.taxClass,
      this.links});

  factory WooTaxRate.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateFromJson(json);
  Map<String, dynamic> toJson() => _$WooTaxRateToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooTaxRateLinks {
  List<WooTaxRateSelf> self;
  List<WooTaxRateCollection> collection;

  WooTaxRateLinks({this.self, this.collection});

  factory WooTaxRateLinks.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooTaxRateLinksToJson(this);
}

@JsonSerializable()
class WooTaxRateSelf {
  String href;

  WooTaxRateSelf({this.href});

  factory WooTaxRateSelf.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateSelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooTaxRateSelfToJson(this);
}

@JsonSerializable()
class WooTaxRateCollection {
  String href;

  WooTaxRateCollection({this.href});

  factory WooTaxRateCollection.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$WooTaxRateCollectionToJson(this);
}
