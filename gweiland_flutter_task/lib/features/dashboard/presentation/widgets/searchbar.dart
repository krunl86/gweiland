import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/provider/dashboard_controller_provider.dart';

class SearchBarField extends ConsumerWidget {
  const SearchBarField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    return TextFormField(
      onChanged: (val) => ref.read(dashboardControllerProvider.notifier).searchBy(val),
      style: theme.textTheme.titleMedium,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: theme.textTheme.labelMedium,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GweilandAssets.icons.searchIcon.svg(height: 12, width: 12),
        ),
        fillColor: const Color(0xff0B0B0B).withOpacity(0.05),
        contentPadding: EdgeInsetsOf(context).symmetric(
          horizontal: Dimensions.small,
          vertical: Dimensions.smaller,
        ),
        filled: true,
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
