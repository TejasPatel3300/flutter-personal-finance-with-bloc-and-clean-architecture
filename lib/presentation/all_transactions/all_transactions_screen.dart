import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/cateogory/category_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/domain/category/entity/category.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/presentation/dashboard/dashboard.dart';

class AllTransactionsScreen extends StatefulWidget {
  const AllTransactionsScreen({super.key});

  @override
  State<AllTransactionsScreen> createState() => _AllTransactionsScreenState();
}

class _AllTransactionsScreenState extends State<AllTransactionsScreen> {
  final TextEditingController _searchController = TextEditingController();
  Category? _selectedCategory;
  TransactionType? _selectedTransactionType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text('Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                prefixText: '\$ ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey, width: 1),
                ),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        final categories = <Category>[];
                        if (state is CategoryLoadSuccess) {
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
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        final categories = <Category>[];
                        if (state is CategoryLoadSuccess) {
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
                              },
                            ),
                          );
                        }
                        return const SizedBox();

                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            BlocBuilder<TransactionBloc, TransactionState>(builder: (context, state) {
              final transactions = state.currentTransactions ?? [];
              return ListView.builder(
                shrinkWrap: true,
                itemCount: transactions.length,
                itemBuilder: (context, index) => TransactionListItem(
                  transaction: transactions[index],
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
