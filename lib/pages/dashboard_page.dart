import 'package:ecom_basic_admin/customwidgets/dashboard_item_view.dart';
import 'package:ecom_basic_admin/models/dashboard_model.dart';
import 'package:ecom_basic_admin/pages/add_product_page.dart';
import 'package:ecom_basic_admin/pages/category_page.dart';
import 'package:ecom_basic_admin/pages/dashboard_home.dart';
import 'package:ecom_basic_admin/pages/order_page.dart';
import 'package:ecom_basic_admin/pages/report_page.dart';
import 'package:ecom_basic_admin/pages/settings_page.dart';
import 'package:ecom_basic_admin/pages/user_list_page.dart';
import 'package:ecom_basic_admin/pages/view_product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final _pages = <Widget>[
    DashboardHome(),
    AddProductPage(),
    ViewProductPage(),
    CategoryPage(),
    OrderPage(),
    UserListPage(),
    SettingsPage(),
    ReportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemCount: dashboardModelList.length,
        itemBuilder: (context, index) {
          final model = dashboardModelList[index];
          return DashboardItemView(
            model: dashboardModelList[index],
          );
        },
      ),
    );
  }
}
