import 'package:disneysea/shuhomepage.dart';
import 'package:flutter/material.dart';
import 'cartmodel.dart';
import 'db_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

void main() {
  runApp(const Cartandpaymentmethod());
}

class Cartandpaymentmethod extends StatelessWidget {
  const Cartandpaymentmethod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Initial route
      routes: {
        '/': (context) => OrderPage(), // Route for OrderPage
        '/qris': (context) => QrisPage(), // Route for QrisPage
        '/success': (context) => SuccessPage(), // Route for SuccessPage
        '/Menu': (context) => shuhomepage(), // Route for SuccessPage
      },
    );
  }
}

DBHelper? dbHelper = DBHelper();

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Future<List<Cart>> cartItemsFuture =
        cart.getDataShu(); // Mengambil daftar produk dalam keranjang dari _cart
    Future<List<Cart>> cartItemsFutureOcean =
        cart.getDataOcean(); 
    int totalPrice = cart
        .getTotalPrice()
        .toInt(); // Total harga termasuk tax dan biaya pengiriman

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/Menu');
          },
        ),
        title: const Column(
          children: [
            Text("Disneyland", style: TextStyle(color: Colors.blue)),
            Text("Sambut Keajaiban & Raih Petualangan",
                style: TextStyle(color: Colors.black54, fontSize: 12)),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.lightBlue[50],
        child: ListView(
          children: [
            const SectionTitle(title: "Shu's Magic"),
            //tampilkan data shu's magic
            FutureBuilder(
                future: cartItemsFuture,
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Text("");
                    } else {
                      return Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var item = snapshot.data![index];
                              return OrderItem(
                                name: item.productName ?? 'Unknown Product',
                                price:
                                    'Rp. ${item.productPrice}', // Ensure price matches your data
                                quantity: '${item.quantity}',
                              );
                            },
                          ),
                        ],
                      );
                    }
                  }

                  return Text("");
                  // return const SectionTitle(title: "");
                }),


            //tampilkan data ocean
            const SectionTitle(title: "Ocean"),
            FutureBuilder(
                future: cartItemsFutureOcean,
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Text("");
                    } else {
                      return Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var item = snapshot.data![index];
                              return OrderItem(
                                name: item.productName ?? 'Unknown Product',
                                price:
                                    'Rp. ${item.productPrice}', // Ensure price matches your data
                                quantity: '${item.quantity}',
                              );
                            },
                          ),
                        ],
                      );
                    }
                  }

                  return Text("");
                  // return const SectionTitle(title: "");
                }),
                
            const SizedBox(height: 20),
            GrandTotal(total: 'Rp. $totalPrice'),
            // const SizedBox(height: 20),
            const PaymentMethod(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String name;
  final String price;
  final String quantity;

  const OrderItem(
      {super.key,
      required this.name,
      required this.price,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: const TextStyle(fontSize: 16)),
          Text(quantity, style: const TextStyle(fontSize: 16)),
          Text(price, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class GrandTotal extends StatelessWidget {
  final String total;

  const GrandTotal({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Grand Total',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(total,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('PAYMENT METHOD',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PaymentButton(label: 'Qris', route: '/qris'),
            PaymentButton(label: 'Cash', route: '/success'),
          ],
        ),
      ],
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String label;
  final String route;

  const PaymentButton({super.key, required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue[100], // Using backgroundColor
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(label),
    );
  }
}

class QrisPage extends StatelessWidget {
  const QrisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Qris Payment', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Scan QRIS untuk melakukan pembayaran',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/d/d7/Commons_QR_code.png', // Replace URL with your QR code URL
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                    'Pastikan Anda telah menyiapkan aplikasi pembayaran.',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Batal',
                          style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/success');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Selesai',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title:
            const Text('Terima Kasih!', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle_outline,
                  color: Colors.green, size: 100),
              const SizedBox(height: 20),
              const Text('Pembayaran Berhasil!',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
              const SizedBox(height: 20),
              const Text('Pesanan Anda sudah kami terima dan sedang diproses.',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  dbHelper!.deleteAll();
                  cart.resetTotalPrice();
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('Kembali ke Beranda'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
