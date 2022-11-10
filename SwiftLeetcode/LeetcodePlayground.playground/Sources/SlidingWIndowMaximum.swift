import Foundation
import DequeModule

public func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result: [Int] = []
    var deque: Deque<Int> = []
    var left = 0
    var right = 0

    while right < nums.count - 1 {
        while let last = deque.last, nums[right] > last {
            _ = deque.popLast()
        }
        deque.append(nums[right])
        if right > k {
            result.append(deque.first!)
            left += 1
        }
        right += 1
    }
    return result
}
