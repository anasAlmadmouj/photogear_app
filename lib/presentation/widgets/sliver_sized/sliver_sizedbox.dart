import 'package:photogear_app/core/imports/app_imports.dart';

class SliverSizedBox extends StatelessWidget {
  final Widget size;
  const SliverSizedBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: size,
    );
  }
}
