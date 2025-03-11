import 'package:flutter/material.dart';
import 'package:flutter_web_project/util.dart';


class ResponsiveNavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Flumake Infotech', style: kNavTitleStyle),
      actions: [
        if (MediaQuery.of(context).size.width > 600) ...[
          TextButton(onPressed: () {}, child: Text('Home')),
          TextButton(onPressed: () => Navigator.pushNamed(context, '/services'), child: Text('Services')),
          TextButton(onPressed: () => Navigator.pushNamed(context, '/portfolio'), child: Text('Portfolio')),
          TextButton(onPressed: () => Navigator.pushNamed(context, '/contact'), child: Text('Contact')),
        ]
      ],
    );
  }
}