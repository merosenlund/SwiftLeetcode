import Foundation
import DequeModule

var greeting = "Hello, playground"


//var result = maxSlidingWindow([1,3,-1,-3,5,6,7], 3)
//print(result)

var x = 3
x += 5
func maxSlidingWindowWithDeque(_ nums: [Int], _ k: Int) -> [Int] {
    var result: [Int] = []
    var deque: Deque<Int> = []
    var left = 0
    var right = 0

    while right < nums.count {
        while let last = deque.last, nums[right] > last {
            _ = deque.popLast()
        }
        deque.append(nums[right])
        if right >= k {
            result.append(deque.first!)
            if (nums[left] == deque.first) {
                _ = deque.popFirst()
            }
            left += 1
        }
        right += 1
    }
    return result
}

var result = maxSlidingWindowWithDeque([1,3,-1,-3,5,3,6,7], 3)

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result: [Int] = []
    var deque: [Int] = []
    var left = 0
    var right = 0

    while right < nums.count {
        while let last = deque.last, nums[right] > last {
            _ = deque.popLast()
        }
        deque.append(nums[right])
        if right >= k - 1 {
            print(deque)
            result.append(deque.first!)
            if (nums[left] == deque.first) {
                _ = deque.remove(at: 0)
            }
            left += 1
        }
        right += 1
    }
    return result
}

result = maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3)

// Best solution from Leetcode
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var maxArray : [Int] = Array()
        var queueArray : [Int] = Array()
        
        for i in 0..<nums.count
        {
            while( !queueArray.isEmpty && nums[queueArray.last!] <= nums[i])
            {
                queueArray.removeLast()
            }
            
            queueArray.append(i)
            if i >= queueArray.first! + k
            {
                queueArray.removeFirst()
            }
            if i >= k - 1
            {
                maxArray.append(nums[queueArray.first!])
            }
        }
        
        return maxArray
    }
}
