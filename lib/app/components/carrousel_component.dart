import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:sizer/sizer.dart';

class CarousselComponent extends StatefulWidget {
  const CarousselComponent({super.key});

  @override
  State<CarousselComponent> createState() => _CarousselComponentState();
}

class _CarousselComponentState extends State<CarousselComponent> {
  List<Widget> items = [
    ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        "assets/images/gados.png",
        fit: BoxFit.cover,
        width: 329,
        height: 186,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        "assets/images/gados2.png",
        fit: BoxFit.cover,
        width: 329,
        height: 186,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        "assets/images/gados3.png",
        fit: BoxFit.cover,
        width: 329,
        height: 186,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      width: screenSize.width >= 481 ? 700 : 329,
      child: Column(
        children: [
          SizedBox(
            height: screenSize.width >= 481 ? 300 : 186,
            width: double.infinity,
            child: FlutterCarousel.builder(
                itemCount: items.length,
                itemBuilder: (context, index, realIndex) {
                  return items[index];
                },
                options: CarouselOptions(
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1300),
                    viewportFraction: 1,
                    disableCenter: true,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    floatingIndicator: false,
                    pauseAutoPlayOnTouch: true,
                    showIndicator: false)),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize.width >= 481 ? 20 : 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/gados3.png",
                  fit: BoxFit.cover,
                  height: screenSize.width >= 481 ? 10.h : 10.h,
                  width: screenSize.width >= 481 ? 24.w : 27.5.w,
                ),
                Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/gados.png",
                  height: screenSize.width >= 481 ? 10.h : 10.h,
                  width: screenSize.width >= 481 ? 24.w : 27.5.w,
                ),
                Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/gados4.png",
                  height: screenSize.width >= 481 ? 10.h : 10.h,
                  width: screenSize.width >= 481 ? 24.w : 27.5.w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
