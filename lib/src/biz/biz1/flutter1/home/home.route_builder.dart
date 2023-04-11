// Copyright (c) 2023 foxsofter.
//

import 'package:flutter_thrio/flutter_thrio.dart';

/// Comments for onRouteBuilderSetting.
///
NavigatorRouteBuilder createRouteBuilder(final ModuleContext moduleContext) {
  return (final pageBuilder, final settings) => NavigatorPageRoute(
        pageBuilder: pageBuilder,
        settings: settings,
      );
}
