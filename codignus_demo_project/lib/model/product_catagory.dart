// To parse this JSON data, do
//
//     final productCatagory = productCatagoryFromJson(jsonString);

import 'dart:convert';

List<ProductCatagory> productCatagoryFromJson(String str) =>
    List<ProductCatagory>.from(
        json.decode(str).map((x) => ProductCatagory.fromJson(x)));

String productCatagoryToJson(List<ProductCatagory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductCatagory {
  ProductCatagory({
    this.id,
    this.name,
    this.alias,
    this.parent,
    this.isParent,
    this.photo,
    this.banner,
    this.description,
    this.orders,
    this.status,
    this.commissionType,
    this.commission,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.child,
  });

  int? id;
  String? name;
  String? alias;
  int? parent;
  int? isParent;
  String? photo;
  String? banner;
  String? description;
  int? orders;
  int? status;
  dynamic commissionType;
  dynamic commission;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<dynamic>? child;

  factory ProductCatagory.fromJson(Map<String, dynamic> json) =>
      ProductCatagory(
        id: json["id"],
        name: json["name"],
        alias: json["alias"] == null ? null : json["alias"],
        parent: json["parent"],
        isParent: json["is_parent"],
        photo: json["photo"],
        banner: json["banner"],
        description: json["description"] == null ? null : json["description"],
        orders: json["orders"] == null ? null : json["orders"],
        status: json["status"],
        commissionType: json["commission_type"],
        commission: json["commission"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        child: List<dynamic>.from(json["child"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alias": alias == null ? null : alias,
        "parent": parent,
        "is_parent": isParent,
        "photo": photo,
        "banner": banner,
        "description": description == null ? null : description,
        "orders": orders == null ? null : orders,
        "status": status,
        "commission_type": commissionType,
        "commission": commission,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "child": List<dynamic>.from(child!.map((x) => x)),
      };
}
