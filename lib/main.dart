import 'package:blog_app/core/theme/app_colors.dart';
import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/feature/splash/presentation/bloc/splash_bloc.dart';
import 'package:blog_app/feature/splash/presentation/pages/splash_screen.dart';
import 'package:blog_app/firebase_options.dart';
import 'package:blog_app/init_dependencies.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setUpLocator();

  ErrorWidget.builder = (details) {
    return Material(
      child: Container(
        color: AppColors.backgroundColor,
        child: Image.asset(
          'assets/images/oops.webp',
          height: 250,
        ),
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<SplashBloc>()),
        BlocProvider(create: (context) => locator<AuthBloc>()),
      ],
      child: MaterialApp(
        title: 'Blog App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkThemeMode,
        home: const SplashScreen(),
      ),
    );
  }
}
