//
//  Solution_287.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/17.
//

import Foundation
class Solution_287 {
    func findDuplicate(_ nums: [Int]) -> Int {
        var l = 1
        var r = nums.count - 1
        while l < r {
            var mid = (l + r) >> 1
            var count = 0
            for val in nums {
                if val <= mid {
                    count += 1
                }
            }
            if count <= mid {
                l = mid + 1
            }else {
                r = mid
            }
        }
        return l
    }
}
