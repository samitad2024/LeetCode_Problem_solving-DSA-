class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    if (x % 10 == 0 && x != 0) {
      return false;
    }

    int reversedNumber = 0;

    while (x > reversedNumber) {
      int digit = x % 10;
      reversedNumber = reversedNumber * 10 + digit;
      x ~/= 10;
    }

    return x == reversedNumber || x == reversedNumber ~/ 10;
  }
}

void main() {
  Solution sol = Solution();

  print('121 is palindrome: ${sol.isPalindrome(121)}');
  print('-121 is palindrome: ${sol.isPalindrome(-121)}');
  print('10 is palindrome: ${sol.isPalindrome(10)}');
  print('0 is palindrome: ${sol.isPalindrome(0)}');
  print('12321 is palindrome: ${sol.isPalindrome(12321)}');
  print('12345 is palindrome: ${sol.isPalindrome(12345)}');
}