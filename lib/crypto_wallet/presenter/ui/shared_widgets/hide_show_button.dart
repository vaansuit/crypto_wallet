import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../riverpod/providers.dart';

class HideShowButton extends ConsumerWidget {
  const HideShowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => ref.read(visibilityProvider.state).state =
          !ref.read(visibilityProvider.state).state,
      icon: Icon(
        key: const Key('ShowIconButton'),
        ref.read(visibilityProvider)
            ? Icons.visibility_rounded
            : Icons.visibility_off_rounded,
        size: 32,
      ),
    );
  }
}
