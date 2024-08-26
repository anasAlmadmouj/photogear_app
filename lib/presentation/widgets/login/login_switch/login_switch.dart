import 'package:photogear_app/core/imports/app_imports.dart';

class LoginSwitch extends StatelessWidget {
  LoginSwitch({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    LoginCubit cubit = LoginCubit.get(context);
    return BlocBuilder<LoginCubit, LoginState>(
    builder: (context, state) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.only(top: 25.h , right: 8.w , left: 8.w),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.of(context).size.height - 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.primaryContainer
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ToggleSwitch(
              minWidth: 90.w,
              cornerRadius: 20.r,
              activeBgColors: [[primaryColor], [primaryColor]],
              activeFgColor: Colors.white,
              inactiveBgColor: MyColors.lightGrayColor,
              inactiveFgColor: Colors.white,
              initialLabelIndex: cubit.switchLoginIndex,
              totalSwitches: 2,
              labels: [AppLocalizations.of(context)!.login, AppLocalizations.of(context)!.signup],
              radiusStyle: true,
              onToggle: (index) {
                cubit.changeSwitchIndex(index: index);
              },
            ),
            20.height,
            cubit.switchLoginIndex == 0 ? LoginBody(formKey: formKey,) : SignupBody(formKey: formKey,),

          ],
        ),
      ),
    );
  },
);
  }
}
