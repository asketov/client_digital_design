import 'package:client_digital_design/ui/app_navigator.dart';
import 'package:client_digital_design/ui/data/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _ViewModel extends ChangeNotifier {
  final _authService = AuthService();

  BuildContext context;
  _ViewModel({required this.context}) {
    _asyncInit();
  }

  void _asyncInit() async {
    if (await _authService.checkAuth()) 
    {
      AppNavigator.toAuth();
    }
  }
}

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  static Widget create() => ChangeNotifierProvider<_ViewModel>(
        create: (context) => _ViewModel(context: context),
        child: const LoaderWidget(),
        lazy: false,
      );
}