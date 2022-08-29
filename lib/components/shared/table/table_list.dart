import 'package:academic_system/constants.dart';
import 'package:flutter/material.dart';

class TableList<T> extends StatelessWidget {
  final List<DataColumn> headers;
  final List<T> data;
  final TableMapper<T> mapper;

  const TableList({
    Key? key,
    required this.headers,
    required this.data,
    required this.mapper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const PageScrollPhysics(),
      child: Row(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.all(Constraints.padding16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DataTable(
                    columns: [
                      ...this.headers,
                      TableData.header(context, 'AÇÕES'),
                    ],
                    rows: this
                        .data
                        .map((e) => DataRow(cells: [
                              ...this.mapper(context, e),
                              TableData.actions(context)
                            ]))
                        .toList(),
                    columnSpacing: Constraints.padding8,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

typedef TableMapper<T> = List<DataCell> Function(
  BuildContext context,
  T element,
);

class TableData {
  static DataCell row(BuildContext context, label) {
    return DataCell(
      Text(
        label.toString(),
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  static DataColumn header(BuildContext context, String label) {
    return DataColumn(
      label: Text(
        label,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  static DataCell actions(BuildContext context) {
    return DataCell(
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            color: Colors.red,
            iconSize: 24,
          )
        ],
      ),
    );
  }
}
