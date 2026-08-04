// Base class
abstract class FeedItem {
  String author;
  int likes;
  FeedItem(this.author, this.likes);

  // method
  void renderWidget(); 
}

// Child class
class TextPost extends FeedItem {
  String textContent;
  TextPost(String author, int likes, this.textContent) : super(author, likes);

  @override
  void renderWidget() {
    print("Post by $author");
    print("   \"$textContent\"");
    print("   Likes: $likes\n");
  }
}

class ImagePost extends FeedItem {
  String imageUrl;
  ImagePost(String author, int likes, this.imageUrl) : super(author, likes);
  
  @override
  void renderWidget() {
    print("Image post by $author");
    print("   Url: $imageUrl");
    print("   Likes: $likes\n");
  }
}

void main() {
  List<FeedItem> myAppFeed = [
    TextPost("Alice", 10, "Hello World"),
    TextPost("Bob", 85, "Testing Flutter"),
    ImagePost("Charlie", 150, "https://example.com/image.png"),
  ];
  
  print("=== Application Feed ===\n");
  
  for (var item in myAppFeed) {
    item.renderWidget(); 
  }
}
