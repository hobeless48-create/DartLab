mixin Loggable {
  void log(String msg) {
    var now = DateTime.now();
    print('[$now] LOG: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log('Pushed "$element" (Size: ${_storage.length})');
  }

  T? pop() {
    if (_storage.isEmpty) {
      log('Cannot pop, Stack is empty');
      return null;
    }
    T removedElement = _storage.removeLast();
    log('Popped "$removedElement" (Size: ${_storage.length})');
    return removedElement;
  }

  T? peek() {
    if (_storage.isEmpty) return null;
    return _storage.last;
  }

  bool get isEmpty => _storage.isEmpty;
}

void main() {
  var nameStack = Stack<String>();
  nameStack.push('Alice');
  nameStack.push('Bob');
  nameStack.pop();
  nameStack.pop();
  nameStack.pop();

  var numberStack = Stack<int>();
  numberStack.push(100);
  numberStack.push(200);
  numberStack.pop();
}
