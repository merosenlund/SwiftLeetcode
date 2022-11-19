//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var dict: [Character: Int] = [:]
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["a"] = 1
print("Dictionary capacity with \(dict.count) element:  \(dict.capacity)")
dict["b"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["c"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["d"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["e"] = 1
dict["f"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["g"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["h"] = 1
dict["i"] = 1
dict["j"] = 1
dict["k"] = 1
dict["l"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")
dict["m"] = 1
print("Dictionary capacity with \(dict.count) elements: \(dict.capacity)")

print("------------")

var arr: [Int] = []
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) element:  \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
arr.append(1)
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
arr.append(1)
arr.append(1)
arr.append(1)
arr.append(1)
arr.append(1)
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")
arr.append(1)
print("Array capacity with \(arr.count) elements: \(arr.capacity)")

//: [Next](@next)
