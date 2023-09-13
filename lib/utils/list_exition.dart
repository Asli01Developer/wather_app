import 'package:flutter/widgets.dart';

extension ListAddBeetwen on List<Widget> {
  List<Widget> addBetween(Widget between) {
    List<Widget> result = [];

    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i != length - 1) {
        result.add(between);
      }
    }
    return <Widget>[
      for (int i = 0; i < length; i++) ...[
        this[i],
        if (i != length - 1) between
      ]
    ];
  }
}
