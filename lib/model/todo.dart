class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'study', isDone: true ),
      ToDo(id: '02', todoText: 'meeting at 4 PM', isDone: true ),
      ToDo(id: '03', todoText: 'library at 2 PM', ),
      ToDo(id: '04', todoText: 'mini project discussion', ),
      ToDo(id: '05', todoText: 'exercise', ),
      ToDo(id: '06', todoText: 'out for dinner with friends', ),
    ];
  }
}