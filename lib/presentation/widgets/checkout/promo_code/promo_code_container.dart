import 'package:photogear_app/core/imports/app_imports.dart';

class PromoCodeContainer extends StatelessWidget {
  const PromoCodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.promoCode,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)
            ),
            15.height,
            SizedBox(
              height: 50.h,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon:  Container(
                    width: 70.w,
                    alignment: Alignment.center,
                    margin: EdgeInsetsDirectional.only(end:
                    12.w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(16),
                        topStart: Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16.sp, color: MyColors.black),
                    ),
                  ),
                    border: InputBorder.none,
                    hintText: AppLocalizations.of(context)!.enterYourPromo,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.primaryContainer,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
