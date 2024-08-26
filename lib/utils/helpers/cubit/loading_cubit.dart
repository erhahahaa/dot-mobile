import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loading_cubit.freezed.dart';
part 'loading_state.dart';

@lazySingleton
class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(const LoadingState());

  void startLoading({int? total = 1, int? count = 0}) {
    emit(state.copyWith(
      isLoading: true,
      total: total,
      count: count,
    ));
  }

  void stopLoading() {
    emit(state.copyWith(
      isLoading: false,
      total: 1,
      count: 1,
    ));
  }
}
