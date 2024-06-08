import 'package:portfolio_website/ui/common/app_colors.dart';
import 'package:portfolio_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/views/home/home_view.desktop.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: FloatingPage(),
    );
  }
}
