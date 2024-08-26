import 'package:photogear_app/core/imports/app_imports.dart';

class SignupBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SignupBody({
    super.key, required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Name',
              controller: LoginCubit.get(context).nameController,
              prefixIcon: Icons.person,
              width: MediaQuery.sizeOf(context).width / 1.2,
            ),
            20.height,
            CustomTextField(
              labelText: 'Username',
              controller: LoginCubit.get(context).usernameController,
              prefixIcon: Icons.person,
            ),
            20.height,
            CustomTextField(
              labelText: 'Email',
              controller: LoginCubit.get(context).emailSignupController,
              prefixIcon: Icons.email,
            ),
            20.height,
            CustomTextField(
              labelText: 'Password',
              controller: LoginCubit.get(context).passSignupController,
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            20.height,
            CustomBottomSheet(
              hintText: LoginCubit.get(context).selectedCountry == '-1' ? AppLocalizations.of(context)!.selectCountry
                  : LoginCubit.get(context).selectedCountry,
              title: countries,
              itemCount: countries.length,
              onTap: (index) => LoginCubit.get(context).updateCountry(countries[index] , context),
            ),
            20.height,
            CustomBottomSheet(
              hintText: LoginCubit.get(context).selectedCity == '-1' ? AppLocalizations.of(context)!.selectCity
                  : LoginCubit.get(context).selectedCity,
              title: cities,
              itemCount: cities.length,
              onTap: (index) => LoginCubit.get(context).updateCity(cities[index] , context),
            ),
            20.height,
            CustomTextField(
              labelText: 'Street',
              controller: LoginCubit.get(context).streetController,
              prefixIcon: Icons.streetview,
            ),
            30.height,
            const HaveAnAccount(
                question: 'Already have an account?',
                textButton: 'Login now'),
            CustomElevatedButton(text: 'Signup',
              function: (){
                LoginCubit.get(context).signUp(formKey: formKey , context: context);
              },),
          ],
        ),
      ),
    );
  }
}
