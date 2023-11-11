import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/provider/dashboard_controller_provider.dart';
import 'package:gweiland_localization/gweiland_localization.dart';

enum sortingType { price, value }

final List<String> list = <String>[
  'Price',
  'Value24',
];

class FilterButton extends ConsumerStatefulWidget {
  FilterButton({
    super.key,
  });

  @override
  ConsumerState<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends ConsumerState<FilterButton> {
  sortingType? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsOf(context).symmetric(
        horizontal: Dimensions.small,
        vertical: Dimensions.smaller,
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(
            color: const Color(0xff0B0B0B).withOpacity(0.3),
          )),
      child: Column(
        children: [
          Row(children: [
            GweilandAssets.icons.filterButtonLines.svg(),
            const Space.w(Dimensions.smaller),
            DropdownButton<sortingType>(
                isDense: true,
                value: dropdownValue,
                iconSize: 0,
                hint: Text(
                  context.l10n.filter,
                ),
                underline: const SizedBox.shrink(),
                onChanged: (sortingType? newValue) => setState(() {
                      dropdownValue = newValue!;
                      ref.read(dashboardControllerProvider.notifier).sortBy(dropdownValue!);
                    }),
                items: sortingType.values
                    .map<DropdownMenuItem<sortingType>>(
                        (sortingType value) => DropdownMenuItem<sortingType>(
                              value: value,
                              child: Text(value.name),
                            ))
                    .toList()),
          ]),
        ],
      ),
    );
  }
}
