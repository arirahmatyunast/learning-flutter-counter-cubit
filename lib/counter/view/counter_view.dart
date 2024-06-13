import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/counter/cubit/counter_cubtit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubtit, int>(
          builder: (context, state) {
            return Text('$state');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('CounterView_Increment_fab'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterCubtit>().increment();
            },
          ),
          FloatingActionButton(
            key: const Key('CounterView_decrement_fab'),
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterCubtit>().decrement();
            },
          ),
          FloatingActionButton(
            key: const Key('CounterView_kali_fab'),
            child: const Icon(Icons.no_adult_content),
            onPressed: () {
              context.read<CounterCubtit>().kali();
            },
          ),
          FloatingActionButton(
            key: const Key('CounterView_reset_fab'),
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              context.read<CounterCubtit>().reset();
            },
          ),
        ],
      ),
    );
  }
}
