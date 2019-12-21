import 'package:flutter/material.dart';
// import 'package:flutter_gunluk_dort/detail.dart';
// import 'package:flutter_gunluk_dort/home.dart';
import 'package:first_app/settings.dart';
import 'package:first_app/home.dart';
import 'package:first_app/aboutus.dart';
import 'package:first_app/detail.dart';
import 'package:first_app/products.dart';
import 'package:first_app/newsfromus.dart';
// import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/detail": (context) => Detail(),
      "/settings": (context) => Settings(),
      "/aboutus": (context) => AboutUs(),
      "/products": (context) => Products(),
      "/newsfromus": (context) => NewsFromUs(),
    },
  ));
}
class NewDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SafeArea(
          child: DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  'images/PAKSAN.png',
                  scale: 1.2,
                ),
                // fit: BoxFit.cover,
              ),
              color: Colors.grey[200],
            ),
          ),
        ),
        ListTile(
          title: Text('ANASAYFA'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          title: Text('HAKKIMIZDA'),
          onTap: () {
            Navigator.pushNamed(context, "/aboutus");
          },
        ),
        ListTile(
          title: Text('ÜRÜNLER'),
          onTap: () {
            // Navigator.pop(context);
            Navigator.pushNamed(context, "/products");
          },
        ),
        ListTile(
          title: Text('BİZDEN HABERLER'),
          onTap: () {
            // Navigator.pop(context);/newsfromus
            Navigator.pushNamed(context, "/newsfromus");
          },
        ),
        ListTile(
          title: Text('KİŞİSEL VERİLERİN KORUNMASI'),
          onTap: () {
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('KALİTE POLİTİKAMIZ'),
          onTap: () {
            Navigator.pushNamed(context, "/detail");
          },
        ),
        ListTile(
          title: Text('İLETİŞİM'),
          onTap: () {
            // Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
}

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(        
      title: Image.asset('images/PAKSAN.png',scale: 1.7,),
      centerTitle: true,
      backgroundColor: Colors.grey[300],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
