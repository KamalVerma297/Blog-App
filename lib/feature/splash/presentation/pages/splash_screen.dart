import 'package:blog_app/core/common/widgets/loader.dart';
import 'package:blog_app/core/theme/app_assets.dart';
import 'package:blog_app/feature/auth/presentation/pages/log_in_screen.dart';
import 'package:blog_app/feature/blogs/presentation/pages/home_screen.dart';
import 'package:blog_app/feature/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<SplashBloc>().add(const SplashEvent.currentUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          Future.delayed(const Duration(seconds: 2), () {
            state.whenOrNull(
              userLoggedInState: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              userNotLoggedInState: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            );
          });
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.appLogo,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const SizedBox(height: 50),
                state == const SplashState.loading()
                    ? const Loader()
                    : const Center(),
              ],
            ),
          );
        },
      ),
    );
  }
}
