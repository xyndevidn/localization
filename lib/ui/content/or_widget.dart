import 'package:flutter/material.dart';

import '../../common/common.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      child: Text(
        // "atau",
        AppLocalizations.of(context)!.orText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
