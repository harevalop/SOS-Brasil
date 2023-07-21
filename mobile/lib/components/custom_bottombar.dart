import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final Function showPhone;
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomBottomBar({
    required Key key,
    required this.showPhone,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  if (scaffoldKey.currentState != null) {
                    scaffoldKey.currentState?.openDrawer();
                  }
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: showPhone.call(),
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}
