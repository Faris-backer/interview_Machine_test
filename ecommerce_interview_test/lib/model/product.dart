import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.proName,
    this.price,
    this.sellingPrice,
    this.qty,
    this.attribute,
    this.image,
    this.categoryId,
    this.categoryName,
    this.shopId,
    this.companyName,
    this.taluk,
    this.longitude,
    this.latitude,
  });

  String? id;
  String? proName;
  String? price;
  String? sellingPrice;
  String? qty;
  String? attribute;
  String? image;
  String? categoryId;
  String? categoryName;
  String? shopId;
  String? companyName;
  String? taluk;
  String? longitude;
  String? latitude;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        proName: json["pro_name"],
        price: json["price"],
        sellingPrice: json["selling_price"],
        qty: json["qty"],
        attribute: json["attribute"],
        image: json["image"],
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        shopId: json["shop_id"],
        companyName: json["company_name"],
        taluk: json["taluk"],
        longitude: json["longitude"],
        latitude: json["latitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pro_name": proName,
        "price": price,
        "selling_price": sellingPrice,
        "qty": qty,
        "attribute": attribute,
        "image": image,
        "category_id": categoryId,
        "category_name": categoryName,
        "shop_id": shopId,
        "company_name": companyName,
        "taluk": taluk,
        "longitude": longitude,
        "latitude": latitude,
      };
}
