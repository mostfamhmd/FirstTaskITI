class Book {
  String title;
  String author;
  int numPages;
  Book(this.title, this.author, this.numPages);
  void displayInfo() {
    print("Title of the Book : $title");
    print("Name of the author of the Book : $author");
    print("Number of pages of the Book : $numPages");
  }
}
