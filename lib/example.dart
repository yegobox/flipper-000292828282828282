import 'package:flipper/stack.dart';

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(0);
  stack.push(0);
  // stack.print();
  print(stack.list);
  stack.pop();
  print(stack.list.join(''));
//   final top = myStack.pop();
}
