import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_flutter_task/features/dashboard/domain/model/cryptolist_model.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/provider/dashboard_controller_provider.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/widgets/crypto_list_item.dart';

class CryptoCard extends ConsumerWidget {
  CryptoCard({
    super.key,
    this.cryptoItem,
  });
  CryptoItem? cryptoItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    ref.watch(dashboardControllerProvider);
    cryptoItem = ref.read(dashboardControllerProvider.notifier).selectedCryptoItem;
    cryptoItem ??= CryptoItem(
      name: 'Bitcoin',
      symbol: 'BTC',
      quote: Quote(
        uSD: USD(
          price: 50000,
          volume24h: 2.35,
        ),
      ),
    );
    var changeIn24 = cryptoItem!.quote!.uSD!.volume24h!.ceil();
    var isNegative = changeIn24 < 0;

    return Container(
      decoration: BoxDecoration(
          color: Color(0xff00CE08).withOpacity(0.10),
          borderRadius: BorderRadius.all(Radius.circular(
            Dimensions.of(context).radii.medium,
          ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsOf(context).symmetric(
              horizontal: Dimensions.small,
              vertical: Dimensions.small,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (cryptoItem?.cryptoIconUrl == null) ...[
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: GweilandAssets.images.bitcoin.image(),
                      ),
                    ] else ...[
                      CryptoIcon(
                        cryptoItem: cryptoItem!,
                      ),
                    ],
                    const Space.w(Dimensions.small),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          cryptoItem?.name ?? 'BTC',
                          style: theme.textTheme.headlineSmall,
                        ),
                        Text(
                          cryptoItem?.slug ?? 'Bitcoin',
                          style: theme.textTheme.titleMedium,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${cryptoItem!.quote!.uSD!.price!.toInt()} USD',
                          maxLines: 2,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Text(
                          '${!isNegative ? '+' : ''} ${changeIn24}',
                          style: theme.textTheme.titleMedium!.copyWith(color: Color(0xff00CE08)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          //const Space.h(Dimensions.small),
          GweilandAssets.images.cartBottomWave.image(fit: BoxFit.cover)
        ],
      ),
    );
  }
}
