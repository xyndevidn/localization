import 'package:flutter/material.dart';

import '../../common/common.dart';

class PaidPackageCard extends StatelessWidget {
  const PaidPackageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: AppLocalizations.of(context)!.accPaidPackage(
        AppLocalizations.of(context)!.paidPackageTitle(1),
        AppLocalizations.of(context)!.paidPackagePrice(1500000),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExcludeSemantics(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      // "Berlangganan 1 Bulan (30 hari)",
                      AppLocalizations.of(context)!.paidPackageTitle(1),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Localizations.override(
                      context: context,
                      locale: const Locale("id"),
                      child: Builder(
                        builder: (context) {
                          return Text(
                            AppLocalizations.of(context)!
                                .paidPackagePrice(1500000),
                            textAlign: TextAlign.center,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  // "Pilih Paket",
                  AppLocalizations.of(context)!.paidPackageButton,
                  semanticsLabel:
                      AppLocalizations.of(context)!.accPaidPackageButton,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
