import 'task1.dart';

class Novel extends Book {
  String genre = 'psychological and romane';

  Novel(
      {required super.title,
      required super.author,
      required super.pagenum,
      required this.genre});

  @override
  printfun() {
     
    print('Title is : $title');
    print('Author is : $author');
    print('Pages are: $pagenum');
  
  }
}

void main() {
  final novel = Book(
    title: 'What Remains of the Day',
    author: 'Kazuo Ishiguro',
    pagenum: 258,
  );

  novel.printfun();
}