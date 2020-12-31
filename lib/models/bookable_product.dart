import 'package:json_annotation/json_annotation.dart';
import 'product_category.dart';
import 'products.dart';
part 'bookable_product.g.dart';

@JsonSerializable()
class BookableProduct extends WooProduct {
  @JsonKey(name: 'apply_adjacent_buffer')
  bool applyAdjacentBuffer;

  @JsonKey(name: 'block_cost')
  int blockCost;

  List<dynamic> availability;

  @JsonKey(name: 'buffer_period')
  int bufferPeriod;
  @JsonKey(name: 'calendar_display_mode')
  String calendarDisplayMode;

  @JsonKey(name: 'cancel_limit_unit')
  String cancelLimitUnit;

  @JsonKey(name: 'restricted_days')
  dynamic restrictedDays;

  @JsonKey(name: 'person_types')
  dynamic personTypes;

  @JsonKey(name: 'resource_base_costs')
  dynamic resourceBaseCosts;

  @JsonKey(name: 'resource_block_costs')
  dynamic resourceBlockCosts;

  @JsonKey(name: 'resource_ids')
  dynamic resourceIds;

  @JsonKey(name: 'resource_assignment')
  dynamic resourceAssignment;

  BookableProduct(
      int id,
      String name,
      String slug,
      String permalink,
      String type,
      String status,
      bool featured,
      String catalogVisibility,
      String description,
      String shortDescription,
      String sku,
      String price,
      String regularPrice,
      String salePrice,
      String priceHtml,
      bool onSale,
      bool purchasable,
      int totalSales,
      bool virtual,
      bool downloadable,
      List<WooProductDownload> downloads,
      int downloadLimit,
      int downloadExpiry,
      String externalUrl,
      String buttonText,
      String taxStatus,
      String taxClass,
      bool manageStock,
      int stockQuantity,
      String stockStatus,
      String backorders,
      bool backordersAllowed,
      bool backordered,
      bool soldIndividually,
      String weight,
      WooProductDimension dimensions,
      bool shippingRequired,
      bool shippingTaxable,
      String shippingClass,
      int shippingClassId,
      bool reviewsAllowed,
      String averageRating,
      int ratingCount,
      List<int> relatedIds,
      List<int> upsellIds,
      List<int> crossSellIds,
      int parentId,
      String purchaseNote,
      List<WooProductCategory> categories,
      List<WooProductItemTag> tags,
      List<WooProductImage> images,
      List<WooProductItemAttribute> attributes,
      List<WooProductDefaultAttribute> defaultAttributes,
      List<int> variations,
      List<int> groupedProducts,
      int menuOrder,
      List<MetaData> metaData,
      {this.applyAdjacentBuffer,
      this.blockCost,
      this.availability,
      this.bufferPeriod,
      this.calendarDisplayMode,
      this.cancelLimitUnit,
      this.restrictedDays,
      this.personTypes,
      this.resourceBaseCosts,
      this.resourceBlockCosts,
      this.resourceAssignment,
      this.resourceIds})
      : super(
            id,
            name,
            slug,
            permalink,
            type,
            status,
            featured,
            catalogVisibility,
            description,
            shortDescription,
            sku,
            price,
            regularPrice,
            salePrice,
            priceHtml,
            onSale,
            purchasable,
            totalSales,
            virtual,
            downloadable,
            downloads,
            downloadLimit,
            downloadExpiry,
            externalUrl,
            buttonText,
            taxStatus,
            taxClass,
            manageStock,
            stockQuantity,
            stockStatus,
            backorders,
            backordersAllowed,
            backordered,
            soldIndividually,
            weight,
            dimensions,
            shippingRequired,
            shippingTaxable,
            shippingClass,
            shippingClassId,
            reviewsAllowed,
            averageRating,
            ratingCount,
            relatedIds,
            upsellIds,
            crossSellIds,
            parentId,
            purchaseNote,
            categories,
            tags,
            images,
            attributes,
            defaultAttributes,
            variations,
            groupedProducts,
            menuOrder,
            metaData);

  factory BookableProduct.fromJson(Map<String, dynamic> json) =>
      _$BookableProductFromJson(json);
  Map<String, dynamic> toJson() => _$BookableProductToJson(this);
}
