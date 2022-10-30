import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageControllerCubit extends Cubit<int> {
  PageControllerCubit() : super(0);

  final pageController = PageController();

  void changePage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    emit(page);
  }
}
