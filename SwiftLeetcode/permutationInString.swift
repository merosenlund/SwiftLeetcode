//
//  permutationInString.swift
//  SwiftLeetcode
//
//  Created by Mitch Rosenlund on 11/12/22.
//

import Foundation

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    var wordContent: [Character: Int] = [:]
    var windowContent: [Character: Int] = [:]
    var targetCount = 0
    var matchCount = 0
    var width = 1
    var left = s2.startIndex
    var right = s2.startIndex
    for character in s1 {
        targetCount += 1
        wordContent[character, default: 0] += 1
    }
    var count = 0
    while right != s2.endIndex {
        // If current char is not in s1
        let currentCharacter = s2[right]
        guard wordContent[currentCharacter] != nil else {
            left = s2.index(after: right)
            right = s2.index(after: right)
            windowContent = [:]
            width = 1
            matchCount = 0
            continue
        }
        windowContent[currentCharacter, default: 0] += 1
        
        if windowContent[currentCharacter] == wordContent[currentCharacter] {
            matchCount += 1
            if matchCount == targetCount {
                return true
            }
        }
        while windowContent[currentCharacter]! > wordContent[currentCharacter]! {
            // Move left until this is no longer true
            let removing = s2[left]
            if windowContent[removing] == wordContent[removing] {
                matchCount -= 1
            }
            windowContent[removing]! -= 1
            left = s2.index(after: left)
            width -= 1
        }
        right = s2.index(after: right)
        width += 1
        if width > targetCount {
            windowContent[s2[left]]! -= 1
            left = s2.index(after: left)
            width -= 1
        }
        count += 1
        if count > 100 {
            break
        }
    }
    return false
}

var optional: String? = ""

if let unwrapped = optional, unwrapped != "" {
    print("UNWRAPPED: \(unwrapped)")
}

optional = "asdf"

if let unwrapped = optional, unwrapped != "" {
    print("UNWRAPPED: \(unwrapped)")
}

print(optional!)

//let result = checkInclusion("ab", "eidboaoo")
//let result = checkInclusion("adc", "dcda")
//let result = checkInclusion("hello", "ooolleoooleh")
let result = checkInclusion("abcdxabcde", "abcdeabcdx")
print("RESULT IS: \(result)")

let string = "asdf"
string.

