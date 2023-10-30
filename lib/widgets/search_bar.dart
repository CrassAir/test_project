import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SearchBar(
          backgroundColor: MaterialStatePropertyAll(Theme.of(context).cardColor),
          elevation: const MaterialStatePropertyAll(0),
          hintText: 'Поиск...',
            trailing: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'assets/Search.svg',
          semanticsLabel: 'Search',
          // colorFilter: ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.srcIn),
        ),
      )
    ]));
  }
}
