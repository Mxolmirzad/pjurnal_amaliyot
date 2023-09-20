import 'package:flutter/material.dart';

class OrqagaQaytish {
 static void OldingilariniOchiribQaytish(
      BuildContext context, StatefulWidget widgetName) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => widgetName,
        ),
        (route) => false);
  }

  bittaOldinga(BuildContext context, StatefulWidget widget) {
    Navigator.pop(context);
  }
}
