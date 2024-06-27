import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'topCircleContainers.dart';
import 'imageCarosoul.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(  // Using it to Scroll screen when items are full in screen
      padding: EdgeInsets.only(right: 15.sp,left: 15.sp),  // Setting Side Margins from the screen
      child: Column(
          children: [

            buildHeader(context), // Logo with app name

            SizedBox(height: 20.h),

            const TopCircleContainers(),  // 5 Circle Containers

            SizedBox(height: 15.h),

            const ImageCarosoulContainer(),  // Image Carosoul Widget

            SizedBox(height: 10.h),

            buildOfferBanner(context),  // Offer banner

            SizedBox(height: 15.h,),
            
            buildCategoryGrids(context)  // 4 Grids of Category

          ],
        ),
    );
  }
}

Widget buildHeader(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 25.w,
        height: 25.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/logo/appLogo2.png')
            )
        ),
      ),
      SizedBox(width: 10.w,),
      Text('Fluxstore',style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
    ],
  );
}

Widget buildOfferBanner(BuildContext context){
  return GestureDetector(
    onTap: (){},
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/banners/saleBanners.jpg'),
            fit: BoxFit.cover
        ),
      ),
    ),
  );
}

Widget buildCategoryGrids(BuildContext context) {
  // Image Paths which we are are going to use
  final List<String> imagePaths = [
    'assets/images/GridImages/Tshirt.png',
    'assets/images/GridImages/top.png',
    'assets/images/GridImages/Salwaar.png',
    'assets/images/GridImages/Jeans.png',
  ];

  // Building Grids
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),  // to not scroll inside it
    itemCount: imagePaths.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // No. of Columns
      mainAxisSpacing: 15.h,
      crossAxisSpacing: 15.w,
      childAspectRatio: 1.0,
    ),
    itemBuilder: (context, index) {
      return _buildGridItem(imagePaths[index]);  // Building its Insider
    },
  );
}

Widget _buildGridItem(String imagePath) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
