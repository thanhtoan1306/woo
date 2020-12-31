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
part 'payment_gateway.g.dart';

@JsonSerializable()
class WooPaymentGateway {
  String id;
  String title;
  String description;
  int order;
  bool enabled;
  String methodTitle;
  String methodDescription;
  List<String> methodSupports;
  WooPaymentGatewaySettings settings;
  WooPaymentGatewayLinks lLinks;

  WooPaymentGateway(
      {this.id,
      this.title,
      this.description,
      this.order,
      this.enabled,
      this.methodTitle,
      this.methodDescription,
      this.methodSupports,
      this.settings,
      this.lLinks})
      : assert(id != null);

  factory WooPaymentGateway.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewayToJson(this);
}

@JsonSerializable()
class WooPaymentGatewaySettings {
  WooPaymentGatewayTitle title;
  WooPaymentGatewayTitle instructions;

  WooPaymentGatewaySettings({this.title, this.instructions});

  factory WooPaymentGatewaySettings.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewaySettingsFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewaySettingsToJson(this);
}

@JsonSerializable()
class WooPaymentGatewayTitle {
  String id;
  String label;
  String description;
  String type;
  String value;
  String defaultvalue;
  String tip;
  String placeholder;

  WooPaymentGatewayTitle(
      {this.id,
      this.label,
      this.description,
      this.type,
      this.value,
      this.defaultvalue,
      this.tip,
      this.placeholder});

  factory WooPaymentGatewayTitle.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayTitleFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewayTitleToJson(this);
}

@JsonSerializable()
class WooPaymentGatewayLinks {
  List<WooPaymentGatewaySelf> self;
  List<WooPaymentGatewayCollection> collection;

  WooPaymentGatewayLinks({this.self, this.collection});

  factory WooPaymentGatewayLinks.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewayLinksToJson(this);
}

@JsonSerializable()
class WooPaymentGatewaySelf {
  String href;

  WooPaymentGatewaySelf({this.href});

  factory WooPaymentGatewaySelf.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewaySelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewaySelfToJson(this);
}

@JsonSerializable()
class WooPaymentGatewayCollection {
  String href;

  WooPaymentGatewayCollection({this.href});

  factory WooPaymentGatewayCollection.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$WooPaymentGatewayCollectionToJson(this);
}
