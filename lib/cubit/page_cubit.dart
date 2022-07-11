// import 'package:flutter_application_1/cubit/';
import 'package:bloc/bloc.dart';


class PageCubit extends Cubit<int> {
  PageCubit() : super(0);
  void setPage(intNewPage) {
    emit(intNewPage);
  }
}
