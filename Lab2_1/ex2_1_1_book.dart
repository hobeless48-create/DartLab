class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Title: $title');
    print('Author: $author');
    print('Price: $price');
  }
}

void main() {
  var book1 = Book('Dart & Flutter', 'John Doe', 350.0);
  var book2 = Book('Clean Code', 'Jane Smith', 420.0);

  book1.showDetail();
  book2.showDetail();
}
