import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/context_extensions.dart';
import 'package:medical_app/presentation/common/base_screen.dart';
import 'package:medical_app/presentation/common/form_widget/app_button.dart';
import 'package:medical_app/presentation/screens/features/appointment_details_screen.dart';

class HomeScreen extends HookWidget {
  static const id = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final specialities = [
      "🦷 Dentist",
      "💝 Heart Surgeon",
      "🦴 Bone Specialist",
      "👂 ENT Specialist",
    ];

    final List<IconData> bottomNavs = [
      Ionicons.home,
      Ionicons.calendar,
      Ionicons.chatbox,
      Ionicons.person,
    ];
    final selectedIndex = useState(0);

    return BaseScreen(
      body: CustomScrollView(
        slivers: [
          _Header(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Upcoming Appointment",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AppButton.textOnly(
                        onPressed: () {},
                        text: "See all",
                        textColor: Colors.grey,
                        fontSize: 15,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppointmentDetailsScreen.id),
                    child: _AppointmentCard(),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            prefixIcon: Icon(
                              Ionicons.search,
                              size: 30,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                context.resources.color.primaryColor.shade400,
                                context.resources.color.primaryColor,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(15),
                          child: const Icon(Icons.tune, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AppButton.textOnly(
                        onPressed: () {},
                        text: "See all",
                        textColor: Colors.grey,
                        fontSize: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: specialities.length,
                    padding: const EdgeInsets.only(left: 20),
                    itemBuilder: (ctx, idx) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ChoiceChip(
                          elevation: 0,
                          disabledColor: context.resources.color.accentColor,
                          backgroundColor: context.resources.color.accentColor,
                          label: Text(
                            specialities[idx],
                          ),
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: const EdgeInsets.only(bottom: 5),
                          onSelected: (val) =>
                              Get.toNamed(AppointmentDetailsScreen.id),
                          shadowColor: Colors.black,
                          selected: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Top Rated Doctor",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AppButton.textOnly(
                        onPressed: () {},
                        text: "See all",
                        textColor: Colors.grey,
                        fontSize: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, idx) {
                return GestureDetector(
                  onTap: () => Get.toNamed(AppointmentDetailsScreen.id),
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.resources.color.accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/images/rated_docs.png",
                            fit: BoxFit.cover,
                            width: 90,
                            height: 80,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: "Dr. Ronald\n",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text.rich(
                                      TextSpan(
                                        text: "Heart Surgeon\n",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black54,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "⭐ 4.9\t\t\t\t🕐11 am - 03 pm",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: 2,
            ),
          )
        ],
      ),
      bottom: false,
      bottomNav: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 0,
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          child: SizedBox(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bottomNavs.length,
              itemBuilder: (ctx, idx) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 35,
                    child: Icon(
                      bottomNavs[idx],
                      color: idx == selectedIndex.value
                          ? Colors.white
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/profile_image.png",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Dr. Chioma 👋",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.resources.color.accentColor,
                ),
                child: const Icon(
                  Ionicons.menu_sharp,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppointmentCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: context.resources.color.primaryColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(25),
            ),
            height: 170,
            width: size.width - 50,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: context.resources.color.primaryColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(25),
            ),
            height: 175,
            width: size.width - 55,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.resources.color.primaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profile_image.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "Dr. Kojo Nisi\n",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          WidgetSpan(
                            child: Text(
                              "Tooth, Specialist",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: AppButton.primaryTransparentIconSm(
                      icon: Icons.calendar_month_outlined,
                      onPressed: () {},
                      text: "Sep 18, 2022",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AppButton.primaryTransparentIconSm(
                      icon: Icons.access_time,
                      onPressed: () {},
                      text: "(11 am - 03 pm)",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
