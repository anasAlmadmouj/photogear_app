import 'package:photogear_app/core/imports/app_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: [
                  const HomeAppBar(),
                  const CategoriesScroll(),
                  SliverToBoxAdapter(
                    child: AppCubit.get(context).homeBody,
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}