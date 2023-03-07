import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karzinka_full/pages/karzinka_page.dart';
import 'package:karzinka_full/pages/texnomart_page.dart';
import 'package:provider/provider.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Scaffold(
            body: IndexedStack(
              index: context.watch<HomeProvider>().index,
              children: const [
                KarzinkaPage(),
                TexnomartPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<HomeProvider>().index,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: (value) {
          context.read<HomeProvider>().onChangedTab(value);
        },
        items: const [
          BottomNavigationBarItem(
            label: "Korzinka",
            icon: Icon(CupertinoIcons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "Texnomart",
            icon: Icon(Icons.phone_android_outlined),
          ),
        ],
      ),

        ),
      ),
    );
  }
}

class HomeProvider extends ChangeNotifier {
  var _index = 0;

  void onChangedTab(int index) {
    _index = index;
    notifyListeners();
  }

  int get index => _index;
}
