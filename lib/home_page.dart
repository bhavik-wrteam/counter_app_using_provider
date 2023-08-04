import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Count',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                const SizedBox(height: 20),
                Consumer<CounterProvider>(
                  builder: (context, counterProvider, _) {
                    print('my count === ${counterProvider.count}');
                    return Text('${counterProvider.count}',
                        style: const TextStyle(color: Colors.black, fontSize: 40));
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).increment();
                  },
                  color: Colors.yellowAccent,
                  child: const Text(
                    'INCREMENT',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).decrement();
                  },
                  onLongPress: (){

                      Provider.of<CounterProvider>(context,listen: false).decrement();
                    
                  },
                  color: Colors.yellowAccent,
                  child: const Text(
                    'Decrement',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
