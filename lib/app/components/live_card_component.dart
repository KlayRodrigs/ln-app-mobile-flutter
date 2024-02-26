import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

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
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: ScaleTransition(
            scale: _animation,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2000),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: colorChange ? AppColors.transparent : AppColors.liveRed,
                borderRadius: BorderRadius.circular(6.34),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
          child: Container(
            height: 170,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(6.34))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "assets/images/live.jpg",
                    height: 148.23,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, bottom: 4),
                      child: CustomTextComponent(
                        content: "LEILÃO GADO CORTE 174",
                        size: 12,
                        color: AppColors.black,
                        ifTruePoppinsElseLato: true,
                        weight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: AppColors.subTexts,
                            size: 20,
                          ),
                          CustomTextComponent(
                            content: "Belo Horizonte - MG",
                            size: 10.3,
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
                          const Icon(
                            Icons.access_time_sharp,
                            color: AppColors.subTexts,
                            size: 17,
                          ),
                          CustomTextComponent(
                            content: " 17:00 (horário de Brasília)",
                            size: 10.3,
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
                        size: 7.92,
                        color: AppColors.subTexts,
                        ifTruePoppinsElseLato: true,
                        weight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side:
                                          BorderSide(color: AppColors.liveRed),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.96)))),
                              fixedSize:
                                  MaterialStatePropertyAll(Size(110.93, 36.98)),
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColors.liveRed)),
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.play_arrow,
                                color: AppColors.white,
                                size: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomTextComponent(
                                    content: "Assistir",
                                    size: 14,
                                    color: AppColors.white,
                                    ifTruePoppinsElseLato: true),
                              ),
                            ],
                          )),
                    ),
                    const Spacer(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
