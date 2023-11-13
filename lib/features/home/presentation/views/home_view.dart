    import 'package:dalel/features/home/presentation/widgets/custom_app_bar.dart';
 import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        leading:CustomAppBar. getLeading(context),
        actions: const [
          ActionBodyWidget(),
        ],
      ),
      body: const HomeViewBody(),
    );
  }

 
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("km");
  }
}

