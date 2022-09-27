import 'package:flutter/material.dart';

import '../shared_widgets/crypto_bottom_navbar.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  static const transactionsRoute = '/transactions-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                key: const Key('cleytin'),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/gif/deuBoaCleitin.gif'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CryptoBottomNavbar(),
    );
  }
}
