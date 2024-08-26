import 'package:photogear_app/core/imports/app_imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileInfoContainer(),
              24.height,
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => ProfileListItem(index: index),
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    endIndent: 1,
                  ),
                  itemCount: profileList.length,
                ),
              ),
              // const LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}