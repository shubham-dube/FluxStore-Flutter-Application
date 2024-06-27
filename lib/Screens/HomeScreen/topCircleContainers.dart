import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCircleContainers extends StatelessWidget {
  const TopCircleContainers({super.key});

  @override
  Widget build(BuildContext context){
    const List<ItemData> items = [
      ItemData('assets/images/icons/shirtMen.png','Men'),
      ItemData('assets/images/icons/frockWomen.webp','Women'),
      ItemData('assets/images/icons/clothing.webp','Clothing'),
      ItemData('assets/images/icons/handBagPosters.png','Posters'),
      ItemData('assets/images/icons/diskMusic.jpg','Music'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.map((item){
        return buildItems(context,item.icon,item.label);
      }).toList()
    );
  }
}

Widget buildItems(BuildContext context, String icon,String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 50.w,
        height: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlueAccent,
          image: DecorationImage(
            image: AssetImage(icon),
            fit: BoxFit.contain
          )
        ),
      ),
      Text(label)
    ],
  );
}

class ItemData {
  final String icon;
  final String label;
  const ItemData(this.icon, this.label);
}