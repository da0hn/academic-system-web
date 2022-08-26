class Course {
  final int _id;
  final String _name;
  final int _periods;

  String get name => _name;

  int get id => _id;

  int get periods => _periods;

  const Course({
    required int id,
    required String name,
    required int periods,
  })  : _id = id,
        _name = name,
        _periods = periods;
}
