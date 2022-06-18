import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainNavigationItem {
  final String title;
  final String actionTitle;

  MainNavigationItem({required this.title, required this.actionTitle});
}

class MainNavigationSlider extends StatefulWidget {
  final List<MainNavigationItem> items;

  const MainNavigationSlider({Key? key, required this.items}) : super(key: key);

  @override
  State<MainNavigationSlider> createState() => _MainNavigationSliderState();
}

class _MainNavigationSliderState extends State<MainNavigationSlider> {
  int _curPage = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enableInfiniteScroll: true,
        enlargeCenterPage: false,
        // Would really like to see the enlarge effect on this, but the effect is too aggressive currently
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        viewportFraction: 0.2,
        onPageChanged: (int index, _) {
          setState(() {
            _curPage = index;
          });
        },
      ),
      items: widget.items.asMap().entries.map((entry) {
        int index = entry.key;
        MainNavigationItem item = entry.value;

        return Container(
            color: const Color.fromARGB(255, 20, 20, 20),
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(item.title),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: index == _curPage
                                  ? Colors.white
                                  : const Color.fromARGB(255, 15, 15, 15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                child: Text(item.actionTitle,
                                    style: TextStyle(
                                      color: index == _curPage
                                          ? const Color.fromARGB(255, 0, 0, 0)
                                          : Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
      }).toList(),
    );
  }
}
