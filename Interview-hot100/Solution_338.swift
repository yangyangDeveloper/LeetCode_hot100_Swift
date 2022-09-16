//
//  Solution_338.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/12.
//

import Foundation
class Solution_338 {
    // i >> 1会把最低位去掉，因此i >> 1 也是比i小的，同样也是在前面的数组里算过。当 i 的最低位是0，则 i 中1的个数和i >> 1中1的个数相同；当i的最低位是1，i 中1的个数是 i >> 1中1的个数再加1 
    func countBits(_ num: Int) -> [Int] {
        var bit = [Int](repeating: 0, count: num+1)
        var i = 1
        while i <= num {
            bit[i] = bit[i>>1] + (i&1)
            i+=1
        }
        return bit
    }
}
