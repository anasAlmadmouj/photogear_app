import 'package:photogear_app/core/imports/app_imports.dart';

class CartItem extends StatelessWidget {
  final CartModel cartModel;
  final int index;
  final bool? isCart;
  const CartItem({super.key, required this.cartModel, required this.index , this.isCart = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            width: 80.w,
            height: 80.h,
            child: Image(image: AssetImage(cartModel.image) , fit: BoxFit.contain, width: 60.w, height: 60.h,),
          ),
          15.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppCubit.get(context).getLimitedCharacters(cartModel.nameEn),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
              ),
              5.height,
              Text(
                '${cartModel.price} Jd',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
              10.height,
              isCart! ? Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    CounterItem(
                      icon: Icons.remove ,
                      onTap: (){
                        CartCubit.get(context).counterMinusMyCart(
                          context: context,
                            index: index,
                            cart: cartModel);
                      },),
                    10.width,
                    Text(
                        '${cartModel.itemQuantity}' , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16.sp),),
                    10.width,
                    CounterItem(
                      icon: Icons.add ,
                      onTap: (){
                        CartCubit.get(context).counterPlusMyCart(
                            index: index,
                            cart: cartModel);
                      },
                    ),
                  ],
                ),
              )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(onPressed: (){}, icon: const Icon(Icons.replay , color: Colors.green,size: 25,), label: const Text('Reorder' , style: TextStyle(color: Colors.green ,fontSize: 16 ),))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}