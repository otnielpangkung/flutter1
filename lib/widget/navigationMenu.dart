import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/page_cubit.dart';

class NavigationMenu extends StatelessWidget {
  final double index;
  final String icon;
  const NavigationMenu({Key? key, required this.index, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
      ),
    );
  }
}
