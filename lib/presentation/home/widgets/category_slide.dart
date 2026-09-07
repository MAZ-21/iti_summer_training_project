// // import 'package:flutter/material.dart';
// // import 'package:spotify_app/core/configs/assets/styles.dart';
// // import 'package:spotify_app/core/configs/theme/app_color.dart';

// // class CategorySlideBar extends StatefulWidget {
// //   const CategorySlideBar({super.key});
// //   static final List<String> category = ['News', 'Video', 'Artists', 'Podcast'];

// //   @override
// //   State<CategorySlideBar> createState() => _CategorySlideBarState();
// // }

// // class _CategorySlideBarState extends State<CategorySlideBar> with SingleTickerProviderStateMixin {
// //   int currentIndex = 0;
// //   late TabController _tabController;
// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(
// //       length: CategorySlideBar.category.length,
// //       vsync: this,
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.horizontal,
// //       child: SizedBox(
// //         child: TabBar(
// //           controller: _tabController,
// //           padding: const EdgeInsets.only(right: 47.0),
// //           tabs: List.generate(CategorySlideBar.category.length, (index) {
// //             return Text(
// //               CategorySlideBar.category[index],
// //               style: Styles.bold22(context).copyWith(
// //                 color: currentIndex == index ? Colors.white : AppColor.greyText,
// //               ),
// //             );
// //           }),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:spotify_app/core/configs/assets/styles.dart';
// import 'package:spotify_app/core/configs/theme/app_color.dart';

// class CategorySlideBar extends StatefulWidget {
//   const CategorySlideBar({super.key});
//   static final List<String> category = ['News', 'Video', 'Artists', 'Podcast',];

//   @override
//   State<CategorySlideBar> createState() => _CategorySlideBarState();
// }

// class _CategorySlideBarState extends State<CategorySlideBar> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(CategorySlideBar.category.length, (index) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 47.0),
//             child: GestureDetector(
//               onTap: () {
//                 currentIndex = index;
//                 setState(() {});
//               },
//               child: Column(
//                 children: [
//                   Text(
//                     CategorySlideBar.category[index],
//                     style: Styles.bold22(context).copyWith(
//                       color: currentIndex == index
//                           ? Colors.white
//                           : AppColor.greyText,
//                     ),
//                   ),
//                   if (currentIndex == index)
//                     AnimatedContainer(
//                       duration: Duration(milliseconds: 900),
//                       curve: Curves.easeInOutSine,
//                       width: 26,
//                       height: 3,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: AppColor.primary,
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';

class CategorySlide extends StatefulWidget {
  const CategorySlide({super.key});

  @override
  State<CategorySlide> createState() => _CategorySlideState();
}

class _CategorySlideState extends State<CategorySlide>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  static List<String> category = ['News', 'Video', 'Artists', 'Podcast'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicatorColor: AppColor.primary,
      indicatorWeight: 3,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 13),
      dividerColor: Colors.transparent,
      padding: EdgeInsets.all(0),
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      tabs: List.generate(category.length, (index) {
        return Text(
          category[index],
          style: Styles.bold22(context).copyWith(
            color: currentIndex == index ? Colors.white : AppColor.greyText,
          ),
        );
      }),
    );
  }
}
