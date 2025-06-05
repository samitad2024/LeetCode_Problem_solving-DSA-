List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numToIndex = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (numToIndex.containsKey(complement)) {
      return [numToIndex[complement]!, i];
    }
    numToIndex[nums[i]] = i;
  }
  return [];
}


void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = twoSum(nums, target);
  print(result); // Output: [0, 1]
}
