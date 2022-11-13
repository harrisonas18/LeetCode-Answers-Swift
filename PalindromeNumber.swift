class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        var newX = x
        
        if(newX < 0 || (newX % 10 == 0 && newX != 0)){
            return false
        }
        
        var revertedNum = 0
        while(newX > revertedNum){
            revertedNum = revertedNum * 10 + newX % 10
            newX /= 10
        }
        
        return newX == revertedNum || newX == revertedNum / 10
    }
}
