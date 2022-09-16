//
//  Solution_494.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/16.
//

// 494. 目标和

class Solution_494 {
   
    var count = 0
    var target = 0
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
       
        self.target = target
        backtrack(0,0)
        
        func backtrack(_ index:Int, _ sum:Int) {
            if index == nums.count {
                if sum == target {
                    count += 1
                }
            } else {
                backtrack(index+1, sum + nums[index])
                backtrack(index+1, sum - nums[index])
            }
        }
        
        return count
    }
}

