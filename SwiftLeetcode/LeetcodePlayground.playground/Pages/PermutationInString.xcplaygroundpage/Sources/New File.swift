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
            print(type(of: removing))
//            if windowContent[removing] === wordContent[removing] {
//                matchCount -= 1
//            }
            width -= 1
            
        }
        right = s2.index(after: right)
        width += 1
        if width > targetCount {
            let removing = s2[left]
            windowContent[s2[left]]! -= 1
            left = s2.index(after: left)
            width -= 1
        }
        print("Right: \(s2[right])")
        print("Left: \(s2[left])")
    }
    return false
}

let result = checkInclusion("ab", "eidboaoo")
