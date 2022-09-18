//
//  Solution_253.swift
//  Interview-hot100
//
//  Created by zhangyangyang on 2022/9/18.
//

class Solution_253 {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        guard intervals.count > 0 else {
            return 0
        }
        // 按照开始时间生序排列
        var intervals = intervals.sorted(by: { $0[0] < $1[0]})
        var rooms = [Int]()
       
        for i in 1..<intervals.count {
            var start = intervals[i][0]
            var isfind = false
            for j in 0..<rooms.count {
                var end = rooms[j]
                // 不重叠 可以利用
                if end <= start {
                    isfind = true
                    rooms[j] = intervals[i][1]
                    break
                }
            }
        
            if !isfind {
                rooms.append(intervals[i][1])
            }
        }
        
        return rooms.count
    }
}
