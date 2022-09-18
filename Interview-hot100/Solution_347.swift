//
//  Solution_347.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/17.
//

import Foundation
class Solution_347 {
    // 哈希
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dic = [Int:Int]()
        var res = [Int]()
        // key是数组值  value是次数

        for i in 0..<nums.count {

            dic[nums[i], default:0] += 1
        }
        var t = Array(dic.keys)
       // var t2 = Array(dic.keys.sorted { dic[$0]! > dic[$1]!})
        
        
        
        return Array(dic.keys.sorted { dic[$0]! > dic[$1]! }[0..<k])
   
    }
}
