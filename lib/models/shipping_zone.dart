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
part 'shipping_zone.g.dart';

@JsonSerializable()
class WooShippingZone {
  int id;
  String name;
  int order;
  WooShippingZoneLinks links;

  WooShippingZone({this.id, this.name, this.order, this.links});

  factory WooShippingZone.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneToJson(this);

  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooShippingZoneLinks {
  List<WooShippingZoneSelf> self;
  List<WooShippingZoneCollection> collection;
  List<Describedby> describedby;

  WooShippingZoneLinks({this.self, this.collection, this.describedby});

  factory WooShippingZoneLinks.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneLinksToJson(this);
}

@JsonSerializable()
class WooShippingZoneSelf {
  String href;

  WooShippingZoneSelf({this.href});

  factory WooShippingZoneSelf.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneSelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneSelfToJson(this);
}

@JsonSerializable()
class WooShippingZoneCollection {
  String href;

  WooShippingZoneCollection({this.href});

  factory WooShippingZoneCollection.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneCollectionToJson(this);
}

@JsonSerializable()
class Describedby {
  String href;

  Describedby({this.href});

  factory Describedby.fromJson(Map<String, dynamic> json) =>
      _$DescribedbyFromJson(json);
  Map<String, dynamic> toJson() => _$DescribedbyToJson(this);
}
