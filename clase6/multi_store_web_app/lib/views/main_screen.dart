import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_web_app/views/site_screens/categories_screen.dart';
import 'package:multi_store_web_app/views/site_screens/dashboard_screen.dart';
import 'package:multi_store_web_app/views/site_screens/orders_screen.dart';
import 'package:multi_store_web_app/views/site_screens/products_screen.dart';
import 'package:multi_store_web_app/views/site_screens/uploadbanner_screen.dart';
import 'package:multi_store_web_app/views/site_screens/vendors_screen.dart';
import 'package:multi_store_web_app/views/site_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget _selectedScreen = DashboardScreen();

  screenSelector(item){
    switch(item.route){
      case DashboardScreen.screenRoute:
        setState(() {
          _selectedScreen = DashboardScreen();
        });
        break;
      case VendorsScreen.screenRoute:
        setState(() {
          _selectedScreen = VendorsScreen();
        });
        break;
      case WithdrawalScreen.screenRoute:
        setState(() {
          _selectedScreen = WithdrawalScreen();
        });
        break;
      case OrdersScreen.screenRoute:
        setState(() {
          _selectedScreen = OrdersScreen();
        });
        break;
      case CategoriesScreen.screenRoute:
        setState(() {
          _selectedScreen = CategoriesScreen();
        });
        break;
      case ProductsScreen.screenRoute:
        setState(() {
          _selectedScreen = ProductsScreen();
        });
        break;
      case UploadBannerScreen.screenRoute:
        setState(() {
          _selectedScreen = UploadBannerScreen();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('MultiStore Admin Panel'),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Vendor',
            route: VendorsScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            route: WithdrawalScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Orders',
            route: OrdersScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Categories',
            route: CategoriesScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Products',
            route: ProductsScreen.screenRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Upload Banners',
            route: UploadBannerScreen.screenRoute,
            icon: Icons.dashboard,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedScreen,
    );;
  }
}

