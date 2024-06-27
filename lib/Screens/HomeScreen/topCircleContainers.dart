import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCircleContainers extends StatelessWidget {
  const TopCircleContainers({super.key});

  static const List<ItemData> items = [
    ItemData('assets/images/icons/tshirt.png','Men'),
    ItemData('assets/images/icons/frock.png','Women'),
    ItemData('assets/images/icons/clothing.png','Clothing'),
    ItemData('assets/images/icons/handBag.png','Hand Bag'),
    ItemData('assets/images/icons/music.png','Music'),
  ];

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: items.map(
         (item){
              return buildItem(context,item.icon,item.label);
          }
      ).toList()

    );
  }
}

Widget buildItem(BuildContext context, String icon,String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 45.w,
        height: 45.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlueAccent,
          image: DecorationImage(
            image: AssetImage(icon),
            fit: BoxFit.cover
          )
        ),
      ),
      SizedBox(height: 7.h),
      Text(label, style: Theme.of(context).textTheme.bodySmall)
    ],
  );
}

class ItemData {
  final String icon;
  final String label;
  const ItemData(this.icon, this.label);
}