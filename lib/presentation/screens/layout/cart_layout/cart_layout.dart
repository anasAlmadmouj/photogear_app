import 'package:photogear_app/core/imports/app_imports.dart';

class CartLayout extends StatelessWidget {
  const CartLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
               SliverAppBar(
                pinned: true,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                title: Text(AppLocalizations.of(context)!.cart , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    AppCubit.get(context).backToHome(context: context);
                  },),
                bottom:  CustomTabBar(
                  firstTab: AppLocalizations.of(context)!.cart,
                  secondTab: AppLocalizations.of(context)!.history,
                ),
              ),
              const SliverFillRemaining(
                child: TabBarView(
                  children: [
                    CartScreen(),
                    HistoryScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  },
);
  }
}

