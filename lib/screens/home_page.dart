import 'package:counter_app_using_provider/providers/sliderProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counterProvider.dart';

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent.shade200),
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
                        return Text('${counterProvider.count}',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 40));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .increment();
                          },
                          color: Colors.yellowAccent,
                          child: const Text(
                            'INCREMENT',
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .decrement();
                          },
                          onLongPress: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .decrement();
                          },
                          color: Colors.yellowAccent,
                          child: const Text(
                            'Decrement',
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent.shade200),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Consumer<SliderProvider>(
                        builder: (BuildContext context, accessSlider, _) {
                          return Slider(
                            value: accessSlider.sliderValue,
                            onChanged: (newValue) {
                              print(accessSlider.sliderValue);

                              accessSlider.sliderValue = newValue;
                            },
                            min: 0.0,
                            max: 1.0,
                          );
                        },
                      ),
                      Consumer<SliderProvider>(
                        builder: (BuildContext context, accessSlider, _) {
                          return Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 100,
                                  color: Colors.redAccent
                                      .withOpacity(accessSlider.sliderValue),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  color: Colors.greenAccent
                                      .withOpacity(accessSlider.sliderValue),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
