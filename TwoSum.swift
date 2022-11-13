class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        var result: [Int] = []
        
        for(currentIndex, n) in nums.enumerated() {
            
            let complement = target - n
            
            if let complementIndex = dict[complement] {
                result.append(complementIndex)
                result.append(currentIndex)
                return result
            }
            
            dict[n] = currentIndex
        }
        
        return []
    }
}
