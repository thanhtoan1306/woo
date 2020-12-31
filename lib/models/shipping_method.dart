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
part 'shipping_method.g.dart';

@JsonSerializable()
class WooShippingMethod {
  int parentId;
  String name;
  List<WooShippingMethodLocations> locations;
  WooShippingMethodMethods methods;

  WooShippingMethod({this.parentId, this.name, this.locations, this.methods});

  factory WooShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooShippingMethodLocations {
  String code;
  String type;

  WooShippingMethodLocations({this.code, this.type});

  factory WooShippingMethodLocations.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodLocationsFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodLocationsToJson(this);
}

@JsonSerializable()
class WooShippingMethodMethods {
  List<WooShippingMethodFreeShipping> freeShipping;
  List<WooShippingMethodFlatRate> flatRate;
  List<WooShippingMethodLocalPickup> localPickup;

  WooShippingMethodMethods(
      {this.freeShipping, this.flatRate, this.localPickup});

  factory WooShippingMethodMethods.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodMethodsFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodMethodsToJson(this);
}

@JsonSerializable()
class WooShippingMethodFreeShipping {
  int id;
  String title;
  String methodId;
  String cost;

  WooShippingMethodFreeShipping(
      {this.id, this.title, this.methodId, this.cost});

  factory WooShippingMethodFreeShipping.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFreeShippingFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodFreeShippingToJson(this);
}

@JsonSerializable()
class WooShippingMethodFlatRate {
  int id;
  String title;
  String methodId;
  String cost;
  String classCost;
  String calculationType;
  bool taxable;
  List<WooShippingMethodShippingClasses> shippingClasses;

  WooShippingMethodFlatRate(
      {this.id,
      this.title,
      this.methodId,
      this.cost,
      this.classCost,
      this.calculationType,
      this.taxable,
      this.shippingClasses});

  factory WooShippingMethodFlatRate.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFlatRateFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodFlatRateToJson(this);
}

@JsonSerializable()
class WooShippingMethodShippingClasses {
  String id;
  String cost;

  WooShippingMethodShippingClasses({this.id, this.cost});

  factory WooShippingMethodShippingClasses.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingMethodShippingClassesFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingMethodShippingClassesToJson(this);
}

@JsonSerializable()
class WooShippingMethodLocalPickup {
  int id;
  String title;
  String methodId;
  bool taxable;
  String cost;

  WooShippingMethodLocalPickup(
      {this.id, this.title, this.methodId, this.taxable, this.cost});
  factory WooShippingMethodLocalPickup.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodLocalPickupFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingMethodLocalPickupToJson(this);
}
