//
//  Solution_724.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/17.
//


class Solution_724 {
    
    func pivotIndex(_ nums: [Int]) -> Int {
        var presum = 0
        
        for i in nums {
            presum += i
        }
        var leftsum = 0
        
        for i in 0..<nums.count {
            
            if (leftsum == presum - nums[i] - leftsum) {
                return i
            }
            
            leftsum = leftsum + nums[i]
        }
        
        return -1
    }
}
