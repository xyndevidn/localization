import 'package:flutter/material.dart';

import '../classes/benefit_feature.dart';
import '../common.dart';
import '../widgets/table_cell_widget.dart';

class BenefitTable extends StatelessWidget {
  const BenefitTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final benefitFeatureList = [
      BenefitFeature(
        // "Akses semua kelas",
        AppLocalizations.of(context)!.benefitFeatureItem1,
        true,
        true,
      ),
      BenefitFeature(
        // "Ujian",
        AppLocalizations.of(context)!.benefitFeatureItem2,
        true,
        true,
      ),
      BenefitFeature(
        // "Kirim Submission",
        AppLocalizations.of(context)!.benefitFeatureItem3,
        false,
        true,
      ),
    ];
    return Table(
      border: TableBorder.all(width: 0.5),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            TableCellWidget(
              // text: "Fitur Utama",
              text: AppLocalizations.of(context)!.benefitFeatureTitle1,
              isBold: true,
            ),
            TableCellWidget(
              // text: "Uji Coba",
              text: AppLocalizations.of(context)!.benefitFeatureTitle2,
              isBold: true,
            ),
            TableCellWidget(
              // text: "Langganan",
              text: AppLocalizations.of(context)!.benefitFeatureTitle3,
              isBold: true,
            ),
          ],
        ),
        ...benefitFeatureList.map((benefitFeature) {
          return TableRow(
            children: [
              TableCellWidget(
                text: benefitFeature.feature,
              ),
              TableCellWidget(
                check: benefitFeature.freeBenefit,
              ),
              TableCellWidget(
                check: benefitFeature.paidBenefit,
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}
