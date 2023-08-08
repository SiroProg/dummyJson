class TodoModel {
  List<Todos> todos;
  int total;
  int skip;
  int limit;

  TodoModel({
    required this.todos,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory TodoModel.fromJson(Map<String, Object?> json) {
    return TodoModel(
      todos: (json['todos'] as List).map((e) => Todos.fromJson(e)).toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
  }
}

class Todos {
  int id;
  String todo;
  bool completed;
  int userId;

  Todos({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  factory Todos.fromJson(Map<String, Object?> json) {
    return Todos(
      id: json['id'] as int,
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: json['userId'] as int,
    );
  }

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'id': id,
      'todo': todo,
      'completed': completed,
      'userId': userId,
    };
  }
}
