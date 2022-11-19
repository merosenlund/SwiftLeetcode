func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    var left = 0
    var right = numbers.count - 1
    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum == target {
            result.append(contentsOf: [left, right])
            break
        } else if sum < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return result
}

var numbers = [2,7,11,15]
var target = 9
print(twoSum(numbers, target))