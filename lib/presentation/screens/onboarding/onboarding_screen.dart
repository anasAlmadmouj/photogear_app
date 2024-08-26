import 'package:photogear_app/core/imports/app_imports.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  bool isLast = false;
  int newIndex = 0;

  void submit() => CacheHelper.saveData(
    key: 'onBoarding',
    value: true,
  ).then((value) {
    if (value) {
      navigateToAndRemoveUntil(context, const LogInScreen());
    }
  });

  @override
  Widget build(BuildContext context) {
    List<OnBoardingModel> onBoardingList = getOnBoardingList(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          !isLast
              ? TextButton(
            onPressed: submit,
            child:  Text(
              AppLocalizations.of(context)!.skip,
              style: const TextStyle(
                color: MyColors.primaryColor,
              ),
            ),
          )
              : Container(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30.0 , right: 16 , left: 16),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  if (index == onBoardingList.length - 1) {
                    setState(() {
                      isLast = true;
                      newIndex = index;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                      newIndex = index;
                    });
                  }
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        onBoardingList[index].image,
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height/2,
                        fit: BoxFit.contain,
                      ),


                      Text(
                        onBoardingList[index].title,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyColors.primaryColor),
                      ),
                      Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onBoardingList[index].details,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey[600] , fontWeight: FontWeight.normal , fontSize: 18.sp),
                            textAlign: TextAlign.center,
                          )),

                    ],
                  ),
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: boardController,
              count: onBoardingList.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: MyColors.primaryColor,
                dotColor: Colors.grey,
                spacing: 5,
                expansionFactor: 4,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            5.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  if (isLast) {
                    submit();
                  } else {
                    boardController.nextPage(
                      duration: const Duration(
                        milliseconds: 750,
                      ),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                child: newIndex == 3 ?  Text(AppLocalizations.of(context)!.getStarted) :  Text(AppLocalizations.of(context)!.continues),
                // borderRadius: 16,
                // backGroundColor: green,
                // fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
