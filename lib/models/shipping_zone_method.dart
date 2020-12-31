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
part 'shipping_zone_method.g.dart';

@JsonSerializable()
class WooShippingZoneMethod {
  int instanceId;
  String title;
  int order;
  bool enabled;
  String methodId;
  String methodTitle;
  String methodDescription;
  WooShippingZoneMethodSettings settings;
  WooShippingZoneMethodLinks links;

  WooShippingZoneMethod(
      {this.instanceId,
      this.title,
      this.order,
      this.enabled,
      this.methodId,
      this.methodTitle,
      this.methodDescription,
      this.settings,
      this.links});

  factory WooShippingZoneMethod.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooShippingZoneMethodSettings {
  WooShippingZoneMethodTitle title;
  WooShippingZoneMethodTaxStatus taxStatus;
  WooShippingZoneMethodCost cost;
  WooShippingZoneMethodClassCosts classCosts;
  WooShippingZoneMethodClassCost92 classCost92;
  WooShippingZoneMethodClassCost91 classCost91;
  WooShippingZoneMethodNoClassCost noClassCost;
  WooShippingZoneMethodType type;

  WooShippingZoneMethodSettings(
      {this.title,
      this.taxStatus,
      this.cost,
      this.classCosts,
      this.classCost92,
      this.classCost91,
      this.noClassCost,
      this.type});

  factory WooShippingZoneMethodSettings.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodSettingsToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodTitle {
  String id;
  String label;
  String description;
  String type;
  String value;
  String titleDefault;
  String tip;
  String placeholder;

  WooShippingZoneMethodTitle(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.titleDefault,
      this.tip,
      this.placeholder});

  factory WooShippingZoneMethodTitle.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTitleFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodTitleToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodTaxStatus {
  String id;
  String label;
  String description;
  String type;
  String value;
  String taxDefault;
  String tip;
  String placeholder;
  WooShippingZoneMethodOptions options;

  WooShippingZoneMethodTaxStatus(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.taxDefault,
      this.tip,
      this.placeholder,
      this.options});

  factory WooShippingZoneMethodTaxStatus.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTaxStatusFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodTaxStatusToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodOptions {
  String taxable;
  String none;

  WooShippingZoneMethodOptions({this.taxable, this.none});

  factory WooShippingZoneMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodOptionsToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodCost {
  String id;
  String label;
  String description;
  String type;
  String value;
  String costDefault;
  String tip;
  String placeholder;

  WooShippingZoneMethodCost(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.costDefault,
      this.tip,
      this.placeholder});

  factory WooShippingZoneMethodCost.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodCostFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneMethodCostToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodClassCosts {
  String id;
  String label;
  String description;
  String type;
  String value;
  String classCostsDefault;
  String tip;
  String placeholder;

  WooShippingZoneMethodClassCosts(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCostsDefault,
      this.tip,
      this.placeholder});

  factory WooShippingZoneMethodClassCosts.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodClassCostsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCostsToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodClassCost92 {
  String id;
  String label;
  String description;
  String type;
  String value;
  String classCost92Default;
  String tip;
  String placeholder;

  WooShippingZoneMethodClassCost92(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCost92Default,
      this.tip,
      this.placeholder});

  factory WooShippingZoneMethodClassCost92.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodClassCost92FromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCost92ToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodClassCost91 {
  String id;
  String label;
  String description;
  String type;
  String value;
  String classCost91Default;
  String tip;
  String placeholder;

  WooShippingZoneMethodClassCost91(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.classCost91Default,
      this.tip,
      this.placeholder});

  factory WooShippingZoneMethodClassCost91.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodClassCost91FromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCost91ToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodNoClassCost {
  String id;
  String label;
  String description;
  String type;
  String value;
  String noClassCostDefault;
  String tip;
  String placeholder;

  WooShippingZoneMethodNoClassCost(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.noClassCostDefault,
      this.tip,
      this.placeholder});z
  factory WooShippingZoneMethodNoClassCost.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodNoClassCostFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodNoClassCostToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodType {
  String id;
  String label;
  String description;
  String type;
  String value;
  String typeDefault;
  String tip;
  String placeholder;
  WooShippingZoneMethodOptions options;

  WooShippingZoneMethodType(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.typeDefault,
      this.tip,
      this.placeholder,
      this.options});

  factory WooShippingZoneMethodType.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodTypeToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodLinks {
  List<WooShippingZoneMethodSelf> self;
  List<WooShippingZoneMethodCollection> collection;
  List<WooShippingZoneMethodDescribes> describes;

  WooShippingZoneMethodLinks({this.self, this.collection, this.describes});

factory WooShippingZoneMethodLinks.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodLinksFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodLinksToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodSelf {
  String href;

  WooShippingZoneMethodSelf({this.href});

factory WooShippingZoneMethodSelf.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodSelfFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodSelfToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodCollection {
  String href;

  WooShippingZoneMethodCollection({this.href});

factory WooShippingZoneMethodCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodCollectionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodCollectionToJson(this);
}

@JsonSerializable()
class WooShippingZoneMethodDescribes {
  String href;

  WooShippingZoneMethodDescribes({this.href});

factory WooShippingZoneMethodDescribes.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneMethodDescribesFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodDescribesToJson(this);
}
