import '../cubits/counter_cubit.dart';
import '../cubits/counter_state.dart';
import 'custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBody extends StatelessWidget {
  const CounterBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    int counterTeamA = BlocProvider.of<CounterCubit>(context).counterTeamA;
    int counterTeamB = BlocProvider.of<CounterCubit>(context).counterTeamB;
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: Text(
                          BlocProvider.of<CounterCubit>(context)
                              .counterTeamA
                              .toString(),
                          style: TextStyle(
                            fontSize: counterTeamA > 90 ? 80 : 100,
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 1 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'A', buttonNumber: 1);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 2 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'A', buttonNumber: 2);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 3 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'A', buttonNumber: 3);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.black,
                    indent: 20,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: Text(
                        BlocProvider.of<CounterCubit>(context)
                            .counterTeamB
                            .toString(),
                        style: TextStyle(
                          fontSize: counterTeamB > 90 ? 90 : 100,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 1 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'B', buttonNumber: 1);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 2 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'B', buttonNumber: 2);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      label: 'Add 3 point',
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncremment(team: 'B', buttonNumber: 3);
                      },
                      textColor: Colors.black,
                      backgroundColor: Colors.orange,
                      size: Size(100, 50),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              label: 'Reset',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).teamInitial();
              },
              textColor: Colors.black,
              backgroundColor: Colors.orange,
              size: Size(200, 50),
            ),
          ],
        );
      },
    );
  }
}
