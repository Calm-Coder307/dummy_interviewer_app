import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/list_bloc.dart';


class SearchField extends StatefulWidget {

  
  TextEditingController searchController = TextEditingController();
  // List aiwehi = [];

  // SearchField(this.searchController, this.aiwehi);


  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<ListBloc, ListState>(
    //   builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                // List<String> list = List.from(state.users);
                // state.nominalList = state.nominalList.where((element) => 
                //     element.contains(value)).toList();
                // list = list.where((element) => element.contains(value)).toList();
                // print(list);
                // widget.aiwehi = state.users.where((element) => element.toString().contains(value)).toList();
                // widget.aiwehi = state.nominalList.where((element) => element.contains(value)).toList();
              });
            },
            controller: widget.searchController,
            decoration: const InputDecoration(
              // labelText: 'Search',
              hintText: 'Search Interviewers',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide()
              ),
            ),
          ),
        );
    //   },
    // );
  }
}
          