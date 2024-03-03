import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class LiveCardComponent extends StatefulWidget {
  const LiveCardComponent({super.key});

  @override
  State<LiveCardComponent> createState() => _LiveCardComponentState();
}

class _LiveCardComponentState extends State<LiveCardComponent>
    with TickerProviderStateMixin {
  bool colorChange = false;
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    changeColor();
  }

  void changeColor() async {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 1200));
      setState(() {
        colorChange = !colorChange;
      });
      await Future.delayed(const Duration(milliseconds: 800));
      setState(() {
        colorChange = !colorChange;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: ScaleTransition(
            scale: _animation,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2000),
              height: screenSize.width >= 481 ? 100.sp : 200,
              width: screenSize.width >= 481 ? 200.sp : 430,
              decoration: BoxDecoration(
                color: colorChange ? AppColors.transparent : AppColors.liveRed,
                borderRadius: BorderRadius.circular(6.34),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
            child: Container(
              height: screenSize.width >= 481 ? 90.sp : 170,
              width: screenSize.width >= 481 ? 190.sp : 400,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6.34))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      screenSize.width >= 481
                          ? "assets/images/banner-2.png"
                          : "assets/images/live.jpg",
                      height: screenSize.width >= 481 ? 80.sp : 148.23,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width >= 481 ? 30.0 : 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, bottom: 4),
                          child: CustomTextComponent(
                            content: "LEILÃO GADO CORTE 174",
                            size: screenSize.width >= 481 ? 6.sp : 12,
                            color: AppColors.black,
                            ifTruePoppinsElseLato: true,
                            weight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.subTexts,
                                size: screenSize.width >= 481 ? 8.sp : 20,
                              ),
                              CustomTextComponent(
                                content: "Belo Horizonte - MG",
                                size: screenSize.width >= 481 ? 5.sp : 10.3,
                                color: AppColors.subTexts,
                                ifTruePoppinsElseLato: true,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time_sharp,
                                color: AppColors.subTexts,
                                size: screenSize.width >= 481 ? 8.sp : 20,
                              ),
                              CustomTextComponent(
                                content: " 17:00 (horário de Brasília)",
                                size: screenSize.width >= 481 ? 5.sp : 10.3,
                                color: AppColors.subTexts,
                                ifTruePoppinsElseLato: true,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: CustomTextComponent(
                            content: "Clique e assista esse leilão agora!",
                            size: screenSize.width >= 481 ? 4.sp : 7.92,
                            color: AppColors.subTexts,
                            ifTruePoppinsElseLato: true,
                            weight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.0.sp),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: const MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: AppColors.liveRed),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.96)))),
                                  fixedSize: MaterialStatePropertyAll(Size(
                                      screenSize.width >= 481 ? 16.w : 110.93,
                                      36.98)),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColors.liveRed)),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    color: AppColors.white,
                                    size: screenSize.width >= 481 ? 30 : 20,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: CustomTextComponent(
                                        content: "Assistir",
                                        size:
                                            screenSize.width >= 481 ? 18 : 9.sp,
                                        color: AppColors.white,
                                        ifTruePoppinsElseLato: true),
                                  ),
                                ],
                              )),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
