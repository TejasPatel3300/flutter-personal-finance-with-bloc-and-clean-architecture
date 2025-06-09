import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/cateogory/category_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/search_filter_transaction/search_and_filter_bloc.dart';
import 'package:personal_finance_tracker/domain/category/entity/category.dart';
import 'package:personal_finance_tracker/presentation/dashboard/dashboard.dart';

class AllTransactionScreenBody extends StatefulWidget {
  const AllTransactionScreenBody({super.key});

  @override
  State<AllTransactionScreenBody> createState() => _AllTransactionScreenBodyState();
}

class _AllTransactionScreenBodyState extends State<AllTransactionScreenBody> {
  final _searchController = TextEditingController();
  final _defaultCategoryFilterOption = Category(userId: -1, name: 'All Categories', type: '');
  final _defaultTransactionTypeOption = 'All Types';

  Category? _selectedCategory;
  String? _selectedTransactionType;

  @override
  void initState() {
    super.initState();
    _setDefaultFilters();
  }

  void _setDefaultFilters() {
    _selectedCategory = _defaultCategoryFilterOption;
    _selectedTransactionType = _defaultTransactionTypeOption;
    if (mounted) {
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchAndFilterBloc, SearchAndFilterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final currentTransactions = state.currentTransactionsList;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey, width: 1),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                  onChanged: (value) {
                    _applyFilter();
                  },
                ),
                const SizedBox(height: 16),
                buildFilterDropdowns(),
                const SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: currentTransactions.length,
                  itemBuilder: (context, index) => TransactionListItem(
                    transaction: currentTransactions[index],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildFilterDropdowns() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                final categories = <Category>[];
                if (state is CategoryLoadSuccess) {
                  categories.add(_defaultCategoryFilterOption);
                  categories.addAll(state.categories);
                  return DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<Category>(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                      ),
                      hint: const Text('Select category'),
                      style: TextStyle(color: Colors.black),
                      value: _selectedCategory,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: categories.map((Category category) {
                        return DropdownMenuItem<Category>(
                          value: category,
                          child: Text(category.name),
                        );
                      }).toList(),
                      onChanged: (Category? value) {
                        setState(() {
                          _selectedCategory = value;
                        });
                        _applyFilter();
                      },
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                ),
                hint: const Text('Select type'),
                style: TextStyle(color: Colors.black),
                value: _selectedTransactionType,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: [_defaultTransactionTypeOption, 'Expense', 'Income'].map((String transactionType) {
                  return DropdownMenuItem<String>(
                    value: transactionType,
                    child: Text(transactionType),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedTransactionType = value;
                  });
                  _applyFilter();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _applyFilter() {
    final category = _selectedCategory?.name == _defaultCategoryFilterOption.name ? '':(_selectedCategory?.name ?? '');
    final type = _selectedTransactionType == _defaultTransactionTypeOption ? '': _selectedTransactionType;
    final searchString = _searchController.text.trim();
    context.read<SearchAndFilterBloc>().add(SearchAndFilterApplied(category: category, type: type, searchString: searchString));
  }

}