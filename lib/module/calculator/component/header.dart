import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme/theme_bloc.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    IconData _iconLight = Icons.wb_sunny;
    IconData _iconDark = Icons.nights_stay;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            'Theme: ${theme.isDark ? 'Dark' : 'Light'}',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        IconButton(
          onPressed: () {
            theme.changeTheme();
          },
          icon: Icon(theme.isDark ? _iconDark : _iconLight),
        ),
      ],
    );
  }
}
