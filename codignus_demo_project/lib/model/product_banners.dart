// To parse this JSON data, do
//
//     final productBanners = productBannersFromJson(jsonString);

import 'dart:convert';

List<ProductBanners> productBannersFromJson(String str) =>
    List<ProductBanners>.from(
        json.decode(str).map((x) => ProductBanners.fromJson(x)));

String productBannersToJson(List<ProductBanners> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductBanners {
  ProductBanners({
    this.id,
    this.name,
    this.alias,
    this.orders,
    this.link,
    this.photo,
    this.status,
    this.position,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? alias;
  int? orders;
  String? link;
  String? photo;
  int? status;
  String? position;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ProductBanners.fromJson(Map<String, dynamic> json) => ProductBanners(
        id: json["id"],
        name: json["name"],
        alias: json["alias"],
        orders: json["orders"],
        link: json["link"],
        photo: json["photo"],
        status: json["status"],
        position: json["position"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alias": alias,
        "orders": orders,
        "link": link,
        "photo": photo,
        "status": status,
        "position": position,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
