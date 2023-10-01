import 'package:arcitech_submission/notifier/current_weather_notifier.dart';
import 'package:arcitech_submission/notifier/five_day_weather_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class FiveDaysCard extends ConsumerStatefulWidget {
  const FiveDaysCard({super.key});

  @override
  ConsumerState<FiveDaysCard> createState() => _CurrentWeatherCardState();
}

class _CurrentWeatherCardState extends ConsumerState<FiveDaysCard> {
  getData() async {
    await ref.read(fiveDayNotifier.notifier).getFiveDaysData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  final colors = [
    Colors.blue.shade300,
    Colors.red.shade300,
    Colors.yellow.shade300,
    Colors.orange.shade300,
    Colors.purple.shade300,
  ];

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(fiveDayNotifier);
    return notifier.map(
      data: (data) {
        final value = data.value;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors[i],
                    Theme.of(context).brightness == Brightness.dark ? Colors.grey[700]! : Colors.white,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(5, 5),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat("dd  MMMM").format(value.list![i * 8].dtTxt!),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value.list![i * 8].main!.temp.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "K",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${value.list![i * 8].clouds!.all}%",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "Cloud",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${value.list![i * 8].wind!.speed} m/s  /  ${value.list![i * 8].wind!.deg} °",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Text(
                                  "Wind",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
        // return Expanded(
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Expanded(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               value.main!.temp.toString(),
        //               style: TextStyle(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Text(
        //               "K",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 fontWeight: FontWeight.w400,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               value.main!.humidity.toString() + "%",
        //               style: TextStyle(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Text(
        //               "Hum",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 fontWeight: FontWeight.w400,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         child: Center(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 "${value.wind!.speed} m/s  /  ${value.wind!.deg} °",
        //                 style: TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //                 textAlign: TextAlign.center,
        //               ),
        //               Text(
        //                 "Wind",
        //                 style: TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
      error: (e) {
        return const Center(
          child: Text("Oops!!! Something went wrong!!!"),
        );
      },
      loading: (l) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
