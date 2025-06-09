class Solution {
  List<String> fizzBuzz(int n) {
    List<String> answer = [];

    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        answer.add("FizzBuzz");
      } else if (i % 3 == 0) {
        answer.add("Fizz");
      } else if (i % 5 == 0) {
        answer.add("Buzz");
      } else {
        answer.add(i.toString());
      }
    }

    return answer;
  }
}

void main() {
  Solution sol = Solution();

  int n1 = 3;
  print("Input: n = $n1");
  print("Output: ${sol.fizzBuzz(n1)}");

  int n2 = 5;
  print("Input: n = $n2");
  print("Output: ${sol.fizzBuzz(n2)}");

  int n3 = 15;
  print("Input: n = $n3");
  print("Output: ${sol.fizzBuzz(n3)}");
}

