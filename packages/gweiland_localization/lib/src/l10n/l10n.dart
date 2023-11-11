import 'package:flutter/material.dart';

import 'arb/app_localizations.dart';

export 'arb/app_localizations.dart';

extension GweilandLocalaization on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
