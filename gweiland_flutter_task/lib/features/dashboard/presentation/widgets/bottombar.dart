import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_common/gweiland_common.dart';
import 'package:gweiland_flutter_task/common/provider/theme_service.dart';
import 'package:gweiland_localization/gweiland_localization.dart';

import 'rotating_globe_widget.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsetsOf(context).symmetric(
        horizontal: Dimensions.smaller,
        vertical: Dimensions.smaller,
      ),
      decoration: BoxDecoration(
          color: /* context.isDarkMode ? theme.gweilandColors.white : */ theme.gweilandColors.black,
          borderRadius: BorderRadius.all(Radius.circular(
            Dimensions.of(context).radii.largest + 10,
          ))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        navItem(
          icon: GweilandAssets.images.smilePng
              .image(width: 20, height: 20, color: theme.gweilandColors.white.withOpacity(1)),
          title: context.l10n.ecom,
        ),
        navItem(
          icon: GweilandAssets.images.exchange
              .image(width: 20, height: 20, color: theme.gweilandColors.white.withOpacity(1)),
          title: context.l10n.exchange,
        ),

        // central yellow globe with constant rotating animation
        InfiniteAnimation(
          durationInSeconds: 111,
          child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: GweilandAssets.images.globe.image()),
        ),

        // launch pad widget
        navItem(
          icon: GweilandAssets.images.launchPad.image(
            width: 20,
            height: 20,
          ),
          title: context.l10n.launchPad,
        ),

        // wallet widget
        navItem(
          icon: GweilandAssets.images.wallet.image(width: 20, height: 20),
          title: context.l10n.wallet,
        ),
      ]),
    );
  }
}

class navItem extends StatelessWidget {
  const navItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        icon,
        const Space.h(Dimensions.smallest),
        Text(
          title,
          style:
              theme.textTheme.labelLarge!.copyWith(color: theme.gweilandColors.white, fontSize: 12),
        )
      ],
    );
  }
}
