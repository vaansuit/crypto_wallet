import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../l10n/l10n.dart';
import '../../../riverpod/providers.dart';

class DetailsButtonsRow extends ConsumerWidget {
  const DetailsButtonsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int chartIndexSelected = ref.watch(chartIndexSelectedProvider);
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 80,
          child: MaterialButton(
            color: chartIndexSelected == 0 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 0;
            },
            child: Text(
              L10n.of(context)!.todayDetailsButtonsRow,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 60,
          child: MaterialButton(
            color: chartIndexSelected == 1 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 1;
            },
            child: const Text('5D'),
          ),
        ),
        SizedBox(
          height: 50,
          width: 60,
          child: MaterialButton(
            color: chartIndexSelected == 2 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 2;
            },
            child: const Text('15D'),
          ),
        ),
        SizedBox(
          height: 50,
          width: 60,
          child: MaterialButton(
            color: chartIndexSelected == 3 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 3;
            },
            child: const Text('30D'),
          ),
        ),
        SizedBox(
          height: 50,
          width: 60,
          child: MaterialButton(
            color: chartIndexSelected == 4 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 4;
            },
            child: const Text('45D'),
          ),
        ),
        SizedBox(
          height: 50,
          width: 60,
          child: MaterialButton(
            color: chartIndexSelected == 5 ? Colors.red : Colors.white,
            onPressed: () {
              ref.read(chartIndexSelectedProvider.notifier).state = 5;
            },
            child: const Text('90D'),
          ),
        ),
      ],
    );
  }
}
