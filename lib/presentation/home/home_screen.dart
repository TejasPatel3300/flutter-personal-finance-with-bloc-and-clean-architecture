import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/presentation/add_transaction/add_transaction_screen.dart';
import 'package:personal_finance_tracker/presentation/budget/budget.dart';
import 'package:personal_finance_tracker/presentation/dashboard/dashboard.dart';
import 'package:personal_finance_tracker/presentation/report/report.dart';
import 'package:personal_finance_tracker/presentation/settings/settings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_getAppbarTitle(_selectedIndex)),
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddTransactionScreen(),
                ));
              },
              clipBehavior: Clip.hardEdge,
              shape: CircleBorder(),
              child: Icon(Icons.add),
            )
          : const SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 20,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_rounded),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Center(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          physics: NeverScrollableScrollPhysics(),
          children: [
            Dashboard(pageController: _pageController),
            Budget(pageController: _pageController),
            Report(pageController: _pageController),
            Settings(pageController: _pageController),
          ],
        ),
      ),
    );
  }

  String _getAppbarTitle(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Budget';
      case 2:
        return 'Reports';
      case 3:
        return 'Settings';
      default:
        return '';
    }
  }
}
