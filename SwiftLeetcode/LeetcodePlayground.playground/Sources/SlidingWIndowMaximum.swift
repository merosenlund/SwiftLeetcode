import Foundation
import DequeModule

public func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var deque: Deque<Int> = []
    var result: [Int] = []
    var left = nums.startIndex
    var right = left + k - 1
    var maximum = Int.min
    var count = 1
    for index in left...right {
        maximum = max(maximum, nums[index])
    }
    result.append(maximum)

    while right < nums.count - 1 {
        right += 1
        if nums[right] > maximum {
            maximum = nums[right]
            count = 1
        } else if nums[right] == maximum {
            count += 1
        }
        if nums[left] == maximum {
            count -= 1
        }
        left += 1
        if count == 0 {
            maximum = Int.min
            for index in left...right {
                maximum = max(maximum, nums[index])
            }
        }
        result.append(maximum)
    }
    return result
}
