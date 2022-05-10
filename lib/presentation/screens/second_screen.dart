import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/bloc/list_bloc.dart';
import '../widgets/second_screen_widgets/grid_view.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          const Card(
            color: Colors.transparent,
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 50, 0, 0),
              child: Text(
                'How would you rate your interviewer(s)?',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            // const SizedBox(height: 15,),
          ),
          const SizedBox(
            width: double.infinity,
            // height: 20,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                child: Text('SELECT YOUR RATING'),
              ),
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SizedBox(
              height: double.infinity,
              child: Grid(),
            ),
          )),
          // BlocBuilder<ListBloc, ListState>(
          //   builder: (context, state) {
          //     return BottomActionBar('GO BACK', 'NEXT',
          //         Icons.keyboard_arrow_right, state.reaction);
          //   },
          // ),
        ]),
      // ),
    );
  }
}
