import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/di/injector_config.dart';
import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';
import 'package:pro1/presentation/widgets/second_screen_widgets/grid_view_data.dart';

import '../../logic/bloc/list_bloc.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InjectorConfig.resolve<ListBloc>(),
      child: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
          if (state is LoadedRatingsState) {
            return
                // GridView.builder(
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 20,
                //     mainAxisSpacing: 20,
                //   ),
                //   itemBuilder: (context, index) {
                //     return GridViewData(ratingEntity: ratingEntity);
                //   }
                // );

                GridView(
              children: state.ratings
                  .map((items) => GridViewData(ratingEntity: items))
                  .toList(),
              // RatingData.map((items) => RatingEntity(
              //   // ratingEntity: items,
              //   // id: items.id,
              //   title: items.title,
              //   description: items.description,
              //   emoji: items.emoji,
              //   color: items.color,
              // )).toList(),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
