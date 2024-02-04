import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  DetailScreen({super.key, required this.text});
  final String text;
  bool isExpanded = false;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isExpanded = false;
  List<Color> containerColors = [
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    String text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.';

    bool isExpanded = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Detail",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/capuchino.webp"),
                const SizedBox(height: 16),
                const Text(
                  "Capuchino",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "with Chocolate",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Text(
                      '4.8',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                    const Text(
                      "(230)",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(width: 150),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox(
                            height: 50,
                            width: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(171, 244, 215, 214),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            )),
                        Image.asset(
                          'assets/images/cofe.png',
                          height: 20,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox(
                            height: 50,
                            width: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(171, 244, 215, 214),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            )),
                        Image.asset(
                          'assets/images/cofe.png',
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.grey),
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      // ignore: dead_code
                      isExpanded ? text : '${text.substring(0, 30)}...',
                      // "The name comes from the Capuchin friars, referring to the color of their habits,[6] and in this context referring to the color of the beverage when milk is added in small portion to dark, brewed coffee[7] (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink.",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        // ignore: dead_code
                        isExpanded ? 'Hide' : 'Read More',
                        style: const TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Size",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              // ignore: unused_label
                              containerColors[0] =
                                  (containerColors[0] == Colors.white)
                                      ? const Color.fromARGB(255, 180, 149, 138)
                                      : Colors.white;
                            });
                          },
                          child: SizedBox(
                            width: 100,
                            height: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  color: containerColors[0],
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            // Дополнительный отступ между контейнерами
                          ),
                        ),
                        const Positioned(
                          left: 45,
                          top: 10,
                          child: Text(
                            "S",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16), // Промежуток между контейнерами
                    InkWell(
                      onTap: () {
                        setState(() {
                          // ignore: unused_label
                          containerColors[1] =
                              (containerColors[1] == Colors.white)
                                  ? const Color.fromARGB(255, 185, 140, 124)
                                  : Colors.white;
                        });
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  color: containerColors[1],
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            // Дополнительный отступ между контейнерами
                          ),
                          const Positioned(
                            left: 45,
                            top: 10,
                            child: Text(
                              "M",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        setState(() {
                          // ignore: unused_label
                          containerColors[2] =
                              (containerColors[2] == Colors.white)
                                  ? const Color.fromARGB(255, 190, 153, 140)
                                  : Colors.white;
                        });
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  color: containerColors[2],
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            // Дополнительный отступ между контейнерами
                          ),
                          const Positioned(
                            left: 45,
                            top: 10,
                            child: Text(
                              "L",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
