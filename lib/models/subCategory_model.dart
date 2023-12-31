// // To parse this JSON data, do
// //
// //     final subCategory = subCategoryFromJson(jsonString);
//
// import 'dart:convert';
//
// SubCategory subCategoryFromJson(String str) => SubCategory.fromJson(json.decode(str));
//
// String subCategoryToJson(SubCategory data) => json.encode(data.toJson());
//
// class SubCategory {
//   List<Subcategory> subcategories;
//
//   SubCategory({
//     required this.subcategories,
//   });
//
//   factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
//     subcategories: List<Subcategory>.from(json["subcategories"].map((x) => Subcategory.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "subcategories": List<dynamic>.from(subcategories.map((x) => x.toJson())),
//   };
// }
//
// class Subcategory {
//   int id;
//   String name;
//   String image;
//   int categoryId;
//   String createdAt;
//   String updatedAt;
//
//   Subcategory({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.categoryId,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
//     id: json["id"],
//     name: json["name"],
//     image: json["image"],
//     categoryId: json["category_id"],
//     createdAt: json["created_at"],
//     updatedAt: json["updated_at"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "image": image,
//     "category_id": categoryId,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//   };
// }
