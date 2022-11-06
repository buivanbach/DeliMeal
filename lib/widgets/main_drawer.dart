import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListile(String title, IconData icon, VoidCallback tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap:tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme
                .of(context)
                .primaryColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme
                    .of(context)
                    .accentColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListile('Meals', Icons.restaurant,(){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListile('Filter', Icons.settings,(){
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
