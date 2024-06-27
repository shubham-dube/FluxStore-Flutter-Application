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
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 15.sp,left: 15.sp),
      child: Column(
          children: [

            Row(
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
            ),

            SizedBox(height: 20.h,),

            const TopCircleContainers(),

            SizedBox(height: 15.h,),

            const ImageCarosoulContainer(),

            SizedBox(height: 10.h,),

            GestureDetector(
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
            ),

            SizedBox(height: 15.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GridTile(
                    child: Container(
                      height: 160.w,
                      width: 160.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/GridImages/Tshirt.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    )
                ),
                GridTile(
                    child: Container(
                      height: 160.w,
                      width: 160.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/GridImages/top.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                )
              ],
            ),

            SizedBox(height: 15.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GridTile(
                    child: Container(
                      height: 160.w,
                      width: 160.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/GridImages/Salwaar.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                ),
                GridTile(
                    child: Container(
                      height: 160.w,
                      width: 160.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/GridImages/Jeans.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                )
              ],
            )

          ],
        ),
    );
  }
}