import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarosoulContainer extends StatefulWidget {
  const ImageCarosoulContainer({super.key});

  @override
  State<ImageCarosoulContainer> createState() => _ImageCarosoulContainer();
}

class _ImageCarosoulContainer extends State<ImageCarosoulContainer> {

  int currentImage = 0;
  static const List<AssetImage> imageList = [
    AssetImage('assets/images/banners/banner1.png'),
    AssetImage('assets/images/banners/banner2.png'),
    AssetImage('assets/images/banners/banner3.png'),
  ];

  @override
  Widget build(BuildContext context){

    int numberOfImages = imageList.length;

    return Stack(
      children: [
        CarouselSlider(

          items: imageList.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: image,
                          fit: BoxFit.cover
                      )
                  ),
                );
              },
            );
          }).toList(),

          options: CarouselOptions(
            height: 250.sp,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentImage = index;
              });
            },
          ),

        ),

        Positioned(
          top: 240.sp,
            left: MediaQuery.of(context).size.width*0.35,
            child: Row(
              children: [
                for(int i=0;i<numberOfImages;i++)
                  Container(
                    margin: EdgeInsets.only(right: 3.sp),
                    height: 2.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: (i==currentImage) ? Colors.black87:Colors.black26,
                    ),
                  )
              ],
            )
        )
      ]
    );
  }
}