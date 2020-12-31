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
part 'shipping_zone_location.g.dart';

@JsonSerializable()
class WooShippingZoneLocation {
  String code;
  String type;
  WooShippingZoneLocationLinks links;

  WooShippingZoneLocation({this.code, this.type, this.links});
  factory WooShippingZoneLocation.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLocationFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneLocationToJson(this);
  @override
  toString() => this.toJson().toString();
}

class WooShippingZoneLocationLinks {
  List<WooShippingZoneLocationCollection> collection;
  List<WooShippingZoneLocationDescribes> describes;

  WooShippingZoneLocationLinks({this.collection, this.describes});

  factory WooShippingZoneLocationLinks.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLocationLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooShippingZoneLocationLinksToJson(this);
}

class WooShippingZoneLocationCollection {
  String href;

  WooShippingZoneLocationCollection({this.href});

  factory WooShippingZoneLocationCollection.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneLocationCollectionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneLocationCollectionToJson(this);
}

class WooShippingZoneLocationDescribes {
  String href;

  WooShippingZoneLocationDescribes({this.href});

  factory WooShippingZoneLocationDescribes.fromJson(
          Map<String, dynamic> json) =>
      _$WooShippingZoneLocationDescribesFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WooShippingZoneLocationDescribesToJson(this);
}
