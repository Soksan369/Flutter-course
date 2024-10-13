String checkBalance(String s) {
  // Map to associate closing brackets with opening brackets
  Map<String, String> bracketMap = {')': '(', '}': '{', ']': '['};
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    // If it's an opening bracket, push it onto the stack
    if (bracketMap.containsValue(char)) {
      stack.add(char);
    }
    // If it's a closing bracket, check the top of the stack
    else if (bracketMap.containsKey(char)) {
      if (stack.isNotEmpty && stack.last == bracketMap[char]) {
        stack.removeLast(); // Pop the matching opening bracket
      } else {
        return "Not balanced"; // Mismatch or empty stack
      }
    }
    // Ignore other characters
  }

  // Return "Balanced" if the stack is empty (all brackets matched)
  return stack.isEmpty ? "Balanced" : "Not balanced";
}

void main() {
  // example
  print(checkBalance("{what is (42)}?"));  // Balanced
  print(checkBalance("[text}"));           // Not balanced
  print(checkBalance("{[[(a)b]c]d} "));    // Balanced
  print(checkBalance("(a)[spt][{]}"));     // Not balanced
}
