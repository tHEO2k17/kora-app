import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/context_extensions.dart';
import 'package:medical_app/presentation/common/base_screen.dart';
import 'package:medical_app/presentation/common/form_widget/app_button.dart';

class AppointmentDetailsScreen extends HookWidget {
  static const id = "/appointment_details";

  const AppointmentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseScreen(
      top: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.resources.color.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(100),
              ),
            ),
            height: size.height / 2.6,
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            "Details",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Dr. Jenny Wilson",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: const Icon(
                            Icons.sailing,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Dentist\t\t⭐\t4.9",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text.rich(
                      TextSpan(
                        text: "Visiting hour\n",
                        children: [
                          TextSpan(
                            text: "11 AM-12 PM",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: TextStyle(color: Colors.white60),
                    ),
                    const SizedBox(height: 30),
                    const Text.rich(
                      TextSpan(
                        text: "Total patient(s)\n",
                        children: [
                          TextSpan(
                            text: "1200+",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 50),
                          child: Image.asset(
                            "assets/images/ripple_effect.png",
                            width: 200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          child: Transform.scale(
                            scaleX: -1,
                            child: Image.asset(
                              "assets/images/img_nurse.png",
                              width: 180,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text.rich(
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                                "sed do eiusmod tempor incididunt ut labore et dolore magna "
                                "aliqua. Ut enim ad minim veniam, quis nostrud exercitation "
                                "ullamco laboris nisi ut aliquip ex ",
                            children: [
                              TextSpan(
                                text: "Read More",
                                style: TextStyle(
                                  color: context.resources.color.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Schedule",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "< June >",
                              style: TextStyle(
                                color: context.resources.color.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 62,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: dates.length,
                            itemBuilder: (ctx, idx) => GestureDetector(
                              onTap: () {},
                              child: _InActiveDate(
                                isActive: idx == 2,
                                dayOfWeek: "${dates[idx]['dayOfWeek']}",
                                date: "${dates[idx]['date']}",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/map.png"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: AppButton.dark(
              onPressed: () {},
              text: "Book an Appointment",
            ),
          )
        ],
      ),
    );
  }
}

class _InActiveDate extends HookWidget {
  final String dayOfWeek;
  final String date;
  final bool isActive;

  const _InActiveDate({
    required this.dayOfWeek,
    required this.date,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: context.resources.color.accentColor,
        gradient: isActive
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.resources.color.primaryColor.shade400,
                  context.resources.color.primaryColor,
                ],
              )
            : null,
      ),
      child: Column(
        children: [
          Text(
            dayOfWeek,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.white : Colors.black54,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
//
// class _ActiveDate extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             context.resources.color.primaryColor.shade400,
//             context.resources.color.primaryColor,
//           ],
//         ),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       padding: const EdgeInsets.all(15),
//       child: Column(
//         children: [
//           Text(
//             dayOfWeek,
//             style: const TextStyle(fontSize: 12),
//           ),
//           Text(
//             date,
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

final dates = [
  {
    "dayOfWeek": "Sat",
    "date": "12",
  },
  {
    "dayOfWeek": "Sun",
    "date": "13",
  },
  {
    "dayOfWeek": "Mon",
    "date": "14",
  },
  {
    "dayOfWeek": "Tue",
    "date": "15",
  },
  {
    "dayOfWeek": "Wed",
    "date": "16",
  },
  {
    "dayOfWeek": "Thu",
    "date": "17",
  },
];
