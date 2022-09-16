//
//  Solution_139.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/15.
//

import Foundation
class Solution_139 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = Array(repeating: false, count: s.count + 1)
        dp[0] = true
        for i in 1 ..< dp.count {
            for word in wordDict {
                if word.count <= i && dp[i - word.count] {
                    let startIndex = s.index(s.startIndex, offsetBy: i - word.count)
                    let endIndex = s.index(s.startIndex, offsetBy: i)
                    let subStr = s[startIndex ..< endIndex]
                    if subStr == word {
                        dp[i] = true
                        break
                    }
                }
            }
        }
        
        return dp.last!
    }
}
