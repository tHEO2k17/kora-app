import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/core/context_extensions.dart';
import 'package:medical_app/presentation/common/base_screen.dart';
import 'package:medical_app/presentation/common/form_widget/app_button.dart';
import 'package:medical_app/presentation/common/slider_indicator.dart';

class WalkThroughScreen extends HookWidget {
  static const id = "/walkthrough";

  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentIndex = useState(0);

    return BaseScreen(
      top: false,
      body: Container(
        color: context.resources.color.primaryColor,
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/ripple_effect.png"),
            ),
            Image.asset(
              "assets/images/img_nurse.png",
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Transform.scale(
                scaleX: 6,
                scaleY: 5,
                child: Container(
                  height: size.height / 6.5,
                  width: size.width,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: size.height / 2.5,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: PageView.builder(
                        itemCount: 3,
                        onPageChanged: (index) => currentIndex.value = index,
                        itemBuilder: (ctx, idx) => Column(
                          children: const [
                            Text(
                              "Perfect Healthcare\nSolution",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Find a specialist that you only "
                              "need on a consulting application.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliderIndicator(
                      slideCount: 3,
                      currentSlide: currentIndex.value,
                    ),
                    const SizedBox(height: 40),
                    AppButton.dark(onPressed: () {}, text: "Get Started")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
