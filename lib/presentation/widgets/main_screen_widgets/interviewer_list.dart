import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/di/injector_config.dart';
import 'package:pro1/presentation/widgets/main_screen_widgets/interviewer_data.dart';

import '../../logic/bloc/list_bloc.dart';

class Interviewerlist extends StatelessWidget {
  const Interviewerlist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildInterviewerList(context);
  }

  BlocProvider<ListBloc> buildInterviewerList(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectorConfig.resolve<ListBloc>(),
      child: BlocBuilder<ListBloc, ListState> (
        builder: (context, state) {
          if (state is ListInitial) {
            BlocProvider.of<ListBloc>(context).add(GetAllInterviewerEvent());
            return _circularProgressIndicator();
          }
          else if(state is LoadingListState) {
            return _circularProgressIndicator();
          }
          else if(state is LoadedListState) {
            return ListView(
              children: state.interviewerList.map((interviewer) => InterviewerData(
                interviewerEntity: interviewer,
              )).toList(),
            );
          }
          else {
           return _circularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _circularProgressIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}