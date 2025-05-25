class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> numMap = {};

    for (int i = 0; i < nums.length; i++) {
      final int num = nums[i];
      final int complement = target - num;

      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }

      numMap[num] = i;
    }

    return [];
  }
}