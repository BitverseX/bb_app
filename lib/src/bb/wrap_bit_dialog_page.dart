
import 'package:flutter/material.dart';
import 'package:flutter_thrio/flutter_thrio.dart';


class WarpBitDialogPage extends NavigatorStatelessPage {
  const WarpBitDialogPage({
    super.key,
    required super.moduleContext,
    required super.settings,
  });

  Widget get widget => getParam<Widget>('child');

  @override
  Widget build(final BuildContext context) {
     return Container(
      child: Text(""),
    );
  }
}
