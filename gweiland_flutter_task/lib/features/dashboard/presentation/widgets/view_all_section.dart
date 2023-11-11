import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gweiland_common/gweiland_common.dart';
import 'package:gweiland_flutter_task/common/provider/theme_service.dart';
import 'package:gweiland_localization/gweiland_localization.dart';

class ViewAllSection extends StatelessWidget {
  const ViewAllSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.topCrypto,
          style: theme.textTheme.titleLarge!.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const Space.w(Dimensions.small),
        Text(
          context.l10n.viewAll,
          style: theme.textTheme.titleMedium!.copyWith(
              color: context.isDarkMode
                  ? theme.gweilandColors.white.withOpacity(0.4)
                  : Color(0xffB0B0B80).withOpacity(0.5)),
        )
      ],
    );
  }
}

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.l10n.cryptoCurrency,
          style: theme.textTheme.headlineMedium,
        ),
        const Space.w(Dimensions.small),
        Text(
          'NFT',
          style: theme.textTheme.headlineMedium!.copyWith(
              color: context.isDarkMode
                  ? theme.gweilandColors.yellow.withOpacity(0.8)
                  : Colors.black.withOpacity(0.3)),
        )
      ],
    );
  }
}
