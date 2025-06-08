class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int p1 = m - 1;
    int p2 = n - 1;
    int p = (m + n) - 1;

    while (p1 >= 0 && p2 >= 0) {
      if (nums1[p1] > nums2[p2]) {
        nums1[p] = nums1[p1];
        p1--;
      } else {
        nums1[p] = nums2[p2];
        p2--;
      }
      p--;
    }

    while (p2 >= 0) {
      nums1[p] = nums2[p2];
      p2--;
      p--;
    }
  }
}

void main() {
  Solution sol = Solution();

  List<int> nums1_1 = [1, 2, 3, 0, 0, 0];
  int m1 = 3;
  List<int> nums2_1 = [2, 5, 6];
  int n1 = 3;
  print("Input: nums1 = $nums1_1 (m=$m1), nums2 = $nums2_1 (n=$n1)");
  sol.merge(nums1_1, m1, nums2_1, n1);
  print("Output: $nums1_1");

  List<int> nums1_2 = [1];
  int m2 = 1;
  List<int> nums2_2 = [];
  int n2 = 0;
  print("Input: nums1 = $nums1_2 (m=$m2), nums2 = $nums2_2 (n=$n2)");
  sol.merge(nums1_2, m2, nums2_2, n2);
  print("Output: $nums1_2");

  List<int> nums1_3 = [0];
  int m3 = 0;
  List<int> nums2_3 = [1];
  int n3 = 1;
  print("Input: nums1 = $nums1_3 (m=$m3), nums2 = $nums2_3 (n=$n3)");
  sol.merge(nums1_3, m3, nums2_3, n3);
  print("Output: $nums1_3");

  List<int> nums1_4 = [4, 5, 6, 0, 0, 0];
  int m4 = 3;
  List<int> nums2_4 = [1, 2, 3];
  int n4 = 3;
  print("Input: nums1 = $nums1_4 (m=$m4), nums2 = $nums2_4 (n=$n4)");
  sol.merge(nums1_4, m4, nums2_4, n4);
  print("Output: $nums1_4");
}
