import 'package:cryptowallet/crypto_wallet/presenter/ui/wallet/widgets/crypto_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/crypto_entity.dart';

class CryptoListView extends StatelessWidget {
  const CryptoListView({
    required this.cryptoList,
    Key? key,
  }) : super(key: key);

  final List<CryptoEntity> cryptoList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cryptoList.length,
        itemBuilder: (context, index) {
          CryptoEntity cryptoEntity = cryptoList[index];

          return CryptoListTile(cryptoModel: cryptoEntity);
        },
      ),
    );
  }
}
