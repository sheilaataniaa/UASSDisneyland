class Cart {
  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialPrice;
  final int? productPrice;
  int? quantity;
  final String? image;
  final int? category; // Tambahkan deskripsi produk

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.image,
    required this.category, // Tambahkan category produk
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res["productId"],
        productName = res["productName"],
        initialPrice = res["initialPrice"],
        productPrice = res["productPrice"],
        quantity = res["quantity"],
        image = res["image"],
        category = res["category"]; // Ambil category dari map

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'image': image,
      'category': category, // Masukkan category ke dalam map
    };
  }
}