class Book {
  String title, author;
  int pagenum;

  Book({
    required this.title,
    required this.author,
    required this.pagenum,
  });

  void printfun() {
    print('Title is : $title');
    print('Author is : $author');
    print('Pages are: $pagenum');
  }
}
