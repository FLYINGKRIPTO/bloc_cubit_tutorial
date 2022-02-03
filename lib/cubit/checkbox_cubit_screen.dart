import 'package:bloc_cubit_tutorial/cubit/text_cubit_state.dart';
import 'package:bloc_cubit_tutorial/cubit/text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CheckboxCubitScreen extends StatefulWidget {
  const CheckboxCubitScreen({Key? key}) : super(key: key);

  @override
  _CheckboxCubitScreenState createState() => _CheckboxCubitScreenState();
}

class _CheckboxCubitScreenState extends State<CheckboxCubitScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Sample "),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Tap ME",
                  style: Theme.of(context).textTheme.headline4,
                ),
                GestureDetector(
                  onTap: () => {
                    //TODO: 5 CHANGE STATE on widget tap
                   // context.read<TextCubit>().passText("Ayaan")
                    context.read<TextCubit>().passText2("Ayaan")
                  },
                  child: const Text("ON TAP SHOULD EMIT CHANGE"),
                ),
                const SizedBox(height: 100,),
                // TODO 4: WRAP Your widget with BLOC builder
                BlocBuilder<TextCubit, TextCubitState>(
                  builder: (context, state) {
                    if (state is InitialState) {
                      return Text(state.props.toString());
                    }
                    if (state is LoadedState) {
                      return Expanded(
                        child: Text(state.props.toString())
                      );
                    }
                    if (state is LoadingState) {
                      return const CircularProgressIndicator();
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
