import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 209, 245, 255),
      ),
      routes: {
        '/qris': (context) => const QrisScreen(),
        '/success': (context) => const SuccessScreen(),
      },
      home: Scaffold(
        body: const CartAndPaymentMethod(),
      ),
    );
  }
}

class CartAndPaymentMethod extends StatelessWidget {
  const CartAndPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Your Order',
                        style: TextStyle(
                          color: Color(0x7F002DA2),
                          fontSize: 30,
                          fontFamily: 'Rosarivo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Sambut Keajaiban & Raih Petualangan',
                        style: TextStyle(
                          color: Color(0x7F002DA2),
                          fontSize: 14,
                          fontFamily: 'Rosarivo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              sectionTitle('Shu\'s Magic'),
              const SizedBox(height: 8),
              orderItem('French Fries', 'Rp.50.000'),
              orderItem('Hotdog', 'Rp.45.000'),
              orderItem('Burger', 'Rp.65.000'),
              const SizedBox(height: 16),
              sectionTitle('Ocean'),
              const SizedBox(height: 8),
              orderItem('Payung', 'Rp.120.000'),
              orderItem('Topi', 'Rp.75.000'),
              orderItem('Jaket', 'Rp.200.000'),
              orderItem('Gantungan Kunci', 'Rp.50.000'),
              orderItem('Sendal', 'Rp.100.000'),
              orderItem('Silver Pass', 'Rp.1.000.000'),
              const SizedBox(height: 32),
              const Text(
                'Grand Total',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Oleo Script',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x26000000),
                      blurRadius: 15,
                      offset: const Offset(2, 2),
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Rp. 5.300.000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'OFL Sorts Mill Goudy TT',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'PAYMENT METHOD',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Oleo Script',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              paymentMethodButton(context, 'Qris'),
              const SizedBox(height: 8),
              paymentMethodButton(context, 'Cash'),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Oleo Script',
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget orderItem(String name, String price) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Rosarivo',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inria Serif',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentMethodButton(BuildContext context, String method) {
    return ElevatedButton(
      onPressed: () {
        if (method == 'Qris') {
          Navigator.pushNamed(context, '/qris');
        } else if (method == 'Cash') {
          Navigator.pushNamed(context, '/success');
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // Mengatur warna latar belakang tombol
      ),
      child: Center(
        child: Text(
          method,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'OFL Sorts Mill Goudy TT',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class QrisScreen extends StatelessWidget {
  const QrisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRIS Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.qr_code,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Scan QR Code to Pay',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Successful!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
