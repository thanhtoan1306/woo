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
part 'product_review.g.dart';

@JsonSerializable()
class WooProductReview {
  int id;
  String dateCreated;
  String dateCreatedGmt;
  int productId;
  String status;
  String reviewer;
  String reviewerEmail;
  String review;
  int rating;
  bool verified;
  Map<String, dynamic> reviewerAvatarUrls;
  WooProductReviewLinks links;

  WooProductReview(
      {this.id,
      this.dateCreated,
      this.dateCreatedGmt,
      this.productId,
      this.status,
      this.reviewer,
      this.reviewerEmail,
      this.review,
      this.rating,
      this.verified,
      this.reviewerAvatarUrls,
      this.links})
      : assert(id != null);

  factory WooProductReview.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductReviewToJson(this);
  @override
  toString() => this.toJson().toString();
}

@JsonSerializable()
class WooProductReviewLinks {
  List<WooProductReviewSelf> self;
  List<WooProductReviewCollection> collection;
  List<WooProductReviewUp> up;

  WooProductReviewLinks({this.self, this.collection, this.up});

  factory WooProductReviewLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewLinksFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductReviewLinksToJson(this);
}

@JsonSerializable()
class WooProductReviewSelf {
  String href;

  WooProductReviewSelf({this.href});

  factory WooProductReviewSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewSelfFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductReviewSelfToJson(this);
}

@JsonSerializable()
class WooProductReviewCollection {
  String href;

  WooProductReviewCollection({this.href});

  factory WooProductReviewCollection.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductReviewCollectionToJson(this);
}

@JsonSerializable()
class WooProductReviewUp {
  String href;

  WooProductReviewUp({this.href});

  factory WooProductReviewUp.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewUpFromJson(json);
  Map<String, dynamic> toJson() => _$WooProductReviewUpToJson(this);
}
