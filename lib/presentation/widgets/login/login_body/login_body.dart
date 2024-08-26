import 'package:photogear_app/core/imports/app_imports.dart';

class LoginBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;
   const LoginBody({
    super.key, required this.formKey,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Email',
              controller: LoginCubit.get(context).emailController,
              prefixIcon: Icons.email,
              width: MediaQuery.sizeOf(context).width/1.2,
            ),
            20.height,
            CustomTextField(
              labelText: 'Password',
              controller: LoginCubit.get(context).passController,
              prefixIcon: Icons.lock,
              width: MediaQuery.sizeOf(context).width/1.2,
            ),
            5.height,
            const ForgotPass(),
            5.height,
            Text('or login with' , style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),),
            15.height,
            const LoginSocialMediaContainer(),
            15.height,
            const HaveAnAccount(
                question: 'Don’t have an account?',
                textButton: 'Register now'),
             CustomElevatedButton(text: AppLocalizations.of(context)!.login , function: (){

               LoginCubit.get(context).signIn(
                   email: LoginCubit.get(context).emailController.text,
                   password: LoginCubit.get(context).passController.text,
                   context: context,
                   formKey: formKey,
               );
             },),
        
          ],
        ),
      ),
    );
  },
);
  }
}