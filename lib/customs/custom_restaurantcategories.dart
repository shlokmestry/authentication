import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant_categories.dart';
import 'package:food_delivery/theme/colors.dart';

class CustomRestaurantPage extends StatelessWidget {
  const CustomRestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: restaurantcategories.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(restaurantcategories[index].image),
                    ),
                    color: AppColors.blackColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: Container(
                              height: 100,
                              width: 600,
                              decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          restaurantcategories[index].name,
                                          style: const TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Text(restaurantcategories[index]
                                                .distance),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                            ),
                                            Text(restaurantcategories[index]
                                                .space),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                            ),
                                            Text(restaurantcategories[index]
                                                .deliverytype)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]));
        },
      ),
    );
  }
}
