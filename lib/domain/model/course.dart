class Course {
  int? id;
  final String name;
  final int periods;

  @override
  String toString() {
    return 'Course{id: $id, name: $name, periods: $periods}';
  }

  Course({
    this.id,
    required this.name,
    required this.periods,
  });
}
