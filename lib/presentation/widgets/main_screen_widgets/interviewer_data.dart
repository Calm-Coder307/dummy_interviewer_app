import 'package:flutter/material.dart';

import '../../../domain/entities/interviewer_entities.dart';

class InterviewerData extends StatelessWidget {
  const InterviewerData({ Key? key, required this.interviewerEntity }) : super(key: key);

  final InterviewerEntity interviewerEntity;

  @override
  Widget build(BuildContext context) {

    var fullname = interviewerEntity.title + ' ' +
                   interviewerEntity.first + ' ' +
                   interviewerEntity.last;

    return ListTile(
      title: Text(fullname),
      subtitle: Text(interviewerEntity.cell),
    );
  }
}