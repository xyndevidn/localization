import 'package:flutter/material.dart';

import '../../common/common.dart';

class FreePackageCard extends StatelessWidget {
  const FreePackageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: AppLocalizations.of(context)!.accFreePackage(
        AppLocalizations.of(context)!.freePackageTitle(15),
        AppLocalizations.of(context)!.freePackagePrice,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExcludeSemantics(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      // "Berlangganan 15 hari",
                      AppLocalizations.of(context)!.freePackageTitle(15),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      // "Gratis",
                      AppLocalizations.of(context)!.freePackagePrice,
                      textAlign: TextAlign.center,
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
                  // "Coba sekarang",
                  AppLocalizations.of(context)!.freePackageButton,
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
