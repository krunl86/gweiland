import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_common/gweiland_common.dart';
import 'package:gweiland_flutter_task/features/dashboard/domain/model/cryptolist_model.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/provider/dashboard_controller_provider.dart';

class CryptoListItem extends ConsumerWidget {
  const CryptoListItem({super.key, required this.cryptoItem});
  final CryptoItem cryptoItem;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    var changeIn24 = cryptoItem.quote!.uSD!.volume24h!.ceil();
    var isNegative = changeIn24 < 0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          ref.read(dashboardControllerProvider.notifier).updateSelectedCard(cryptoItem);
          //ref.read(dashboardControllerProvider.notifier).notify();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CryptoIcon(
                  cryptoItem: cryptoItem,
                ),
                const Space.w(Dimensions.smaller),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cryptoItem.symbol!,
                      style: theme.textTheme.headlineMedium!.copyWith(fontSize: 18),
                    ),
                    Text(
                      cryptoItem.name!,
                      style: theme.textTheme.titleMedium!.copyWith(),
                    )
                  ],
                ),
                const Space.w(Dimensions.small),
                if (isNegative) ...[
                  GweilandAssets.icons.negativeGraph.svg(),
                ] else ...[
                  GweilandAssets.icons.positiveGraph.svg(),
                ]
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${cryptoItem.quote!.uSD!.price!.toInt()} USD',
                    maxLines: 2,
                    style: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '${!isNegative ? '+' : ''} ${changeIn24}',
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: isNegative ? theme.colorScheme.error : theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CryptoIcon extends ConsumerStatefulWidget {
  const CryptoIcon({super.key, required this.cryptoItem});
  final CryptoItem cryptoItem;

  @override
  ConsumerState<CryptoIcon> createState() => _CryptoIconState();
}

class _CryptoIconState extends ConsumerState<CryptoIcon> {
  String? cryptoIconUrl;

  @override
  void initState() {
    super.initState();
    if (widget.cryptoItem.cryptoIconUrl == null) {
      ref.read(dashboardControllerProvider.notifier).getUrl(widget.cryptoItem.id!);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(dashboardControllerProvider);
    cryptoIconUrl = ref
        .read(dashboardControllerProvider)
        .cryptoListModel!
        .data!
        .where((element) => element.id == widget.cryptoItem.id)
        .first
        .cryptoIconUrl;
    return Container(
      height: 46,
      width: 46,
      //decoration: BoxDecoration(shape: BoxShape.circle),
      child: cryptoIconUrl != null ? Image.network(cryptoIconUrl!) : null,
    );
  }
}
