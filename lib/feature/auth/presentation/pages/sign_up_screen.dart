import 'package:blog_app/core/common/utils/show_snackbar.dart';
import 'package:blog_app/core/common/widgets/loader.dart';
import 'package:blog_app/core/theme/app_colors.dart';
import 'package:blog_app/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/feature/auth/presentation/pages/log_in_screen.dart';
import 'package:blog_app/feature/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:blog_app/feature/auth/presentation/widgets/auth_text_form_field.dart';
import 'package:blog_app/feature/blogs/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    route() => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => route(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () => route(),
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () {
                    showSnackBar('Please wait.', context);
                  },
                  success: (userId) {
                    showSnackBar('Sign Up Succesful', context);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  failure: (message) {
                    showSnackBar(message, context);
                  },
                );
              },
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 50,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AuthTextField(
                          hintText: 'Name',
                          textEditingController: nameController,
                        ),
                        const SizedBox(height: 15),
                        AuthTextField(
                          hintText: 'Email',
                          textEditingController: emailController,
                        ),
                        const SizedBox(height: 15),
                        AuthTextField(
                          hintText: 'Password',
                          textEditingController: passwordController,
                          isObsecureText: true,
                        ),
                        const SizedBox(height: 15),
                        state == const AuthState.loading()
                            ? const Loader()
                            : AuthGradientButton(
                                buttontext: 'Sign Up',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                          AuthEvent.signUp(
                                            nameController.text.trim(),
                                            emailController.text.trim(),
                                            passwordController.text.trim(),
                                          ),
                                        );
                                  }
                                },
                              ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () => route(),
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account ? ',
                              style: Theme.of(context).textTheme.titleMedium,
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: AppColors.gradient2),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
