//
//  Solution_394.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/18.
//

import Foundation
class Solution_394 {
    func decodeString(_ s: String) -> String {
        var stack = [(Int, String)]()
        var res = ""
        var muti = 0
        for c in s {
            if c == "[" {
                stack.append((muti, res))
                muti = 0
                res = ""
            } else if c == "]" {
                if let (curMutil, lastRes) = stack.popLast() {
                    res = lastRes + String(repeating: res, count: curMutil)
                }
            } else if c.isWholeNumber {
                muti = muti * 10 + c.wholeNumberValue!
            } else {
                res.append(c)
            }
        }
        return res
    }
}
