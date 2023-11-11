import 'dart:async';

import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gweiland_assets/gweiland_assets.dart';
import 'package:gweiland_common/gweiland_common.dart';
import 'package:gweiland_flutter_task/common/provider/localization_service.dart';
import 'package:gweiland_flutter_task/common/provider/theme_service.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/widgets/crypto_list_item.dart';
import 'package:gweiland_localization/gweiland_localization.dart';
import 'package:gweiland_network/gweiland_network.dart';
import '../provider/dashboard_controller_provider.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  static DashboardScreen builder(BuildContext context, GoRouterState state) =>
      const DashboardScreen();

  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  bool showLocal = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      ref.read(dashboardControllerProvider.notifier).getOrderList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ref.watch(dashboardControllerProvider);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        titleSpacing: 24,
        title: Text(
          context.l10n.exchange,
          style: theme.textTheme.headlineMedium!.copyWith(fontSize: 20.sp),
        ),
        actions: [
          // actionbar notification button with badge widget to show new notification
          Badge(
              backgroundColor: theme.gweilandColors.yellow,
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsetsOf(context).all(
                  Dimensions.smallest,
                ),
                child: GestureDetector(
                    onTap: () => setState(() {
                          showLocal = !showLocal;
                        }),
                    child: GweilandAssets.icons.notificationBell.svg(height: 20, width: 20)),
              )),
          const Space.w(Dimensions.small),

          // actionbar setting button to toggle theme.
          GestureDetector(
              onTap: () => ref.read(themeProvider.notifier).toggleTheme(),
              child: GweilandAssets.icons.settings.svg(height: 20, width: 20)),
          const Space.w(Dimensions.medium)
        ],
      ),
      body: Padding(
        padding: EdgeInsetsOf(context).symmetric(
          horizontal: Dimensions.medium,
          vertical: Dimensions.smaller,
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // showing language selection widgets
              if (showLocal) ...[const LanguageSelector()],

              // spacer
              const Space.h(DimensionToken.small),

              // search bar and filter buttons
              Row(
                children: [
                  const Expanded(child: SearchBarField()),
                  const Space.w(Dimensions.small),
                  FilterButton(),
                ],
              ),
              //spacer
              const Space.h(DimensionToken.small),

              // title Row
              TitleRow(theme: theme),

              //spacer
              const Space.h(DimensionToken.small),

              // Crypto card widget
              CryptoCard(),

              //spacer
              const Space.h(Dimensions.small),

              //view all list Section
              const ViewAllSection(),

              //spacer
              const Space.h(Dimensions.small),

              // listview containg crypto list
              Expanded(
                  child: ref.read(dashboardControllerProvider).networkstate == Loading
                      ? Center(
                          //width: 55,
                          //height: 55,
                          child: CircularProgressIndicator(
                            color: theme.primaryColor,
                          ),
                        )
                      : ListView.builder(
                          itemCount:
                              ref.read(dashboardControllerProvider).cryptoListModel?.data?.length ??
                                  0,
                          itemBuilder: (context, index) {
                            var cryptoItem =
                                ref.read(dashboardControllerProvider).cryptoListModel!.data![index];

                            // returning single list item as crypto list
                            return CryptoListItem(
                              cryptoItem: cryptoItem,
                            );
                          },
                        )),

              // spacer
              const Space.h(Dimensions.small),

              // bottomBar
              const CustomBottomBar(),
              //const Space.h(Dimensions.medium)
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedSize(
      duration: const Duration(
        seconds: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => ref.read(localizationProvider).changeDirection(const Locale('en')),
            child: const LanguageSelectorItem(
              icon: Icons.language,
              label: 'English',
            ),
          ),
          const Space.w(Dimensions.smaller),
          GestureDetector(
            onTap: () => ref.read(localizationProvider).changeDirection(const Locale('ar')),
            child: const LanguageSelectorItem(
              icon: Icons.language,
              label: 'Arabic',
            ),
          ),
          const Space.w(Dimensions.smaller),
          GestureDetector(
            onTap: () => ref.read(localizationProvider).changeDirection(const Locale('de')),
            child: const LanguageSelectorItem(
              icon: Icons.language,
              label: 'German',
            ),
          ),
          const Space.w(Dimensions.smaller),
          GestureDetector(
            onTap: () => ref.read(localizationProvider).changeDirection(const Locale('hi')),
            child: const LanguageSelectorItem(
              icon: Icons.language,
              label: 'Hindi',
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageSelectorItem extends StatelessWidget {
  const LanguageSelectorItem({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(label)],
    );
  }
}
