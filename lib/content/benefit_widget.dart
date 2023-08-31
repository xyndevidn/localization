import 'package:flutter/material.dart';

import '../common.dart';
import 'benefit_table.dart';

class BenefitWidget extends StatelessWidget {
  const BenefitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          // "Keuntungan Langganan",
          AppLocalizations.of(context)!.benefitTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          softWrap: true,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: BenefitTable(),
        ),
      ],
    );
  }
}
