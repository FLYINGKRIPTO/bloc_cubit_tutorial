
import 'package:bloc_cubit_tutorial/cubit/checkbox_cubit_screen.dart';
import 'package:bloc_cubit_tutorial/cubit/setStateExample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/text_cubit.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // TODO 3: WRAP WITH BLOC PROVIDER and provider your cubit under create
    return BlocProvider(
      create: (_) => TextCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CUBIT',
        theme: ThemeData.light().copyWith(primaryColor:const  Color(0xFFe13133)),
          home: const  CheckboxCubitScreen()
      ),
    );
  }
}
