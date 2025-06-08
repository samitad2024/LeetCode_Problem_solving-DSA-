

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {}; 

    for (int i = 0; i < nums.length; i++) {
      int currentNum = nums[i];
      int complement = target - currentNum;

      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }

      numMap[currentNum] = i;
    }

    return []; 
  }
}

void main() {
  Solution sol = Solution();

  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print('Nums: $nums1, Target: $target1 -> Result: ${sol.twoSum(nums1, target1)}');

  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print('Nums: $nums2, Target: $target2 -> Result: ${sol.twoSum(nums2, target2)}');

  List<int> nums3 = [3, 3];
  int target3 = 6;
  print('Nums: $nums3, Target: $target3 -> Result: ${sol.twoSum(nums3, target3)}');
}