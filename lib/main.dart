import 'package:ecom_basic_admin/pages/add_product_page.dart';
import 'package:ecom_basic_admin/pages/category_page.dart';
import 'package:ecom_basic_admin/pages/dashboard_page.dart';
import 'package:ecom_basic_admin/pages/launcher_page.dart';
import 'package:ecom_basic_admin/pages/login_page.dart';
import 'package:ecom_basic_admin/pages/order_details_Page.dart';
import 'package:ecom_basic_admin/pages/order_page.dart';
import 'package:ecom_basic_admin/pages/product_details_page.dart';
import 'package:ecom_basic_admin/pages/product_repurchase_page.dart';
import 'package:ecom_basic_admin/pages/report_page.dart';
import 'package:ecom_basic_admin/pages/settings_page.dart';
import 'package:ecom_basic_admin/pages/user_list_page.dart';
import 'package:ecom_basic_admin/pages/view_product_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
          actionsIconTheme: Theme.of(context).iconTheme.copyWith(
                color: Colors.white,
              ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName: (context) => const LauncherPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        DashboardPage.routeName: (_) => const DashboardPage(),
        AddProductPage.routeName: (_) => const AddProductPage(),
        ViewProductPage.routeName: (_) => const ViewProductPage(),
        ProductDetailsPage.routeName: (_) => const ProductDetailsPage(),
        CategoryPage.routeName: (_) => const CategoryPage(),
        OrderPage.routeName: (_) => const OrderPage(),
        OrderDetailsPage.routeName: (_) => const OrderDetailsPage(),
        ReportPage.routeName: (_) => const ReportPage(),
        SettingsPage.routeName: (_) => const SettingsPage(),
        ProductRepurchasePage.routeName: (_) => const ProductRepurchasePage(),
        UserListPage.routeName: (_) => const UserListPage(),
      },
    );
  }
}
