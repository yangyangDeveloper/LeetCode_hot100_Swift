//
//  Solution_5.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/12.
//

import Foundation
class Solution_5 {
    var maxlength = 0
    var start = 0
    var end = 0
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        var array = s.map({ String.init($0)})
        for i in 0 ..< s.count {
            //   以i为中心
            expandCenter(array: array, left: i, right: i)
            //   以i和i+1为中心
            expandCenter(array: array, left: i, right: i + 1)
        }
        // 移除 start之前的元素  不包含start
        array.removeFirst(start)
        // prefix 截取 多少个元素    然后joined 拼接一起
        let sub = array.prefix(end - start + 1).joined()
        return sub
    }
    
    func expandCenter(array: [String], left: Int, right: Int){
        var i = left
        var j = right
        while i >= 0 && j < array.count && array[i] == array[j] {
            if j - i + 1 > maxlength {
                start = i
                end = j
                maxlength = j  - i + 1
            }
            i -= 1
            j += 1
        }
    }
}
