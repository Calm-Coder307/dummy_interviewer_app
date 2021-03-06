import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';
import 'package:pro1/domain/usecases/get_all_ratings_usecase.dart';

import '../../../domain/entities/interviewer_entities.dart';
import '../../../domain/usecases/get_all_interviewer_use_case.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final GetAllInterviewerUseCase getAllInterviewerUseCase;
  final GetAllRatingsUseCase getAllRatingsUseCase;

  ListBloc({
    required this.getAllInterviewerUseCase,
    required this.getAllRatingsUseCase,
    }) : super(ListInitial()) {
    on<ListEvent>((event, emit) async {
      if(event is GetAllInterviewerEvent) {

      emit(LoadingListState());
      final interviewerList = await getAllInterviewerUseCase();
      emit(LoadedListState(interviewerList: interviewerList));
      }
      else if(event is GetAllRatingsEvent) {

      final ratingList = await getAllRatingsUseCase.calll();
      emit(LoadedRatingsState(ratings: ratingList));
      }


    });

    // on<GetAllRatingsEvent>((event, emit) async{
    // }); 
  }
}
