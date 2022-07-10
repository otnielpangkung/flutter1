import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
// import 'blo';
// import 'bloc';
import '../cubit/page_cubit.dart';

class NavigationBar extends StatelessWidget {
  final double index;

  const NavigationBar({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
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