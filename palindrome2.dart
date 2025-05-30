class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }

    int reversedHalf = 0;
    while (x > reversedHalf) {
      int digit = x % 10;
      reversedHalf = reversedHalf * 10 + digit;
      x ~/= 10;
    }

    return x == reversedHalf || x == reversedHalf ~/ 10;
  }
}

void main() {
  Solution sol = Solution();

  print('121 is palindrome: ${sol.isPalindrome(121)}');
  print('-121 is palindrome: ${sol.isPalindrome(-121)}');
  print('10 is palindrome: ${sol.isPalindrome(10)}');
  print('0 is palindrome: ${sol.isPalindrome(0)}');
  print('12321 is palindrome: ${sol.isPalindrome(12321)}');
  print('123456 is palindrome: ${sol.isPalindrome(123456)}');
}