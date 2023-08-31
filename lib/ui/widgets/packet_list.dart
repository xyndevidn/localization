import 'package:flutter/material.dart';

import '../content/free_package_card.dart';
import '../content/or_widget.dart';
import '../content/padi_package_card.dart';
import 'max_width_widget.dart';

class PackageList extends StatelessWidget {
  const PackageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPotrait = orientation == Orientation.portrait;

    return MaxWidthWidget(
      maxWidth: 600,
      child: isPotrait
          ? const Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PaidPackageCard(),
                OrWidget(),
                FreePackageCard(),
              ],
            )
          : const IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: PaidPackageCard()),
                  OrWidget(),
                  Expanded(child: FreePackageCard()),
                ],
              ),
            ),
    );
  }
}
