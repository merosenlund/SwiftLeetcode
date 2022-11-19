//: [Previous](@previous)

import Foundation
import XCTest

/*
 Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.

 In other words, return true if one of s1's permutations is the substring of s2.
 */

var myString = "asdfa"


myString[String.Index.init(utf16Offset: 2, in: myString)]

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

struct InclusionTracker {
    var wordCount: [Character: Int] = [:]
    var windowCount: [Character: Int] = [:]
    var complete: Set<Character> = []
    init(s1: String, s2: String) {
        
    }
    
    func moveWindow() {
        
    }
}

class CheckInclusionTests: XCTestCase {
    func test1() {
        let result = checkInclusion("ab", "eidbaooo")
        XCTAssertEqual(result, true)
    }
    func test2() {
        let result = checkInclusion("ab", "eidboaoo")
        XCTAssertEqual(result, false)
    }
    func test3() {
        let result = checkInclusion("adc", "dcda")
        XCTAssertEqual(result, true)
    }
    func test4() {
        let result = checkInclusion("hello", "ooolleoooleh")
        XCTAssertEqual(result, true)
    }
}
CheckInclusionTests.defaultTestSuite.run()


//: [Next](@next)
