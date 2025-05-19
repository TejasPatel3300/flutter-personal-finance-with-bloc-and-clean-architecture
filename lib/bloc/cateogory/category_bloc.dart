import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/category/entity/category.dart';
import 'package:personal_finance_tracker/domain/category/usecase/get_all_categories_usecase.dart';
import 'package:personal_finance_tracker/domain/category/usecase/get_categories_by_type_usecase.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

part 'category_event.dart';

part 'category_state.dart';

part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetAllCategoriesUseCase _getAllCategoriesUseCase;
  final GetCategoriesByTypeUseCase _getCategoriesByTypeUseCase;

  CategoryBloc({
    required GetAllCategoriesUseCase getAllCategoriesUseCase,
    required GetCategoriesByTypeUseCase getCategoriesByTypeUseCase,
  })  : _getAllCategoriesUseCase = getAllCategoriesUseCase,
        _getCategoriesByTypeUseCase = getCategoriesByTypeUseCase,
        super(const CategoryState.initial()) {
    on<CategoryStarted>(_onCategoryStarted);
    on<CategoryAdded>(_onCategoryAdded);
    on<CategoryDeleted>(_onCategoryDeleted);
    on<CategoryUpdated>(_onCategoryUpdated);
  }

  Future<void> _onCategoryStarted(CategoryStarted event, Emitter emit) async {
    emit(CategoryLoading());
    final result = await _getAllCategoriesUseCase.call(NoParams());
    result.fold(
      (failure) => emit(CategoryLoadFailure(failure)),
      (categories) => emit(CategoryLoadSuccess(categories)),
    );
  }

  Future<void> _onCategoryAdded(CategoryAdded event, Emitter emit) async {}

  Future<void> _onCategoryDeleted(CategoryDeleted event, Emitter emit) async {}

  Future<void> _onCategoryUpdated(CategoryUpdated event, Emitter emit) async {}
}
