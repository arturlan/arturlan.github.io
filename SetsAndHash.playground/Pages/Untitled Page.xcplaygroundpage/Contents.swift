import Foundation


var primaryColors: Set<String> = ["red", "green"]
primaryColors.insert("blue")


protocol SetProtocol {
    typealias ItemType
    mutating func add(item: ItemType)
    mutating func remove(item: ItemType)
    func contains(item: ItemType) -> Bool
}

struct ArraySet<T: Equatable>: SetProtocol, CustomStringConvertible {
    var elements = [T]()
    // SetProtocol
    typealias ItemType = T
    mutating func add(item: T) {
        if !contains(item) {
            elements.append(item)
        }
    }
    mutating func remove(item: T) {
        if let idx = elements.indexOf(item) {
            elements.removeAtIndex(idx)
        }
    }
    func contains(item: T) -> Bool {
        for element in elements {
            if element == item {
                return true
            }
        }
        return false
    }
    // CustomStringConvertible
    var description: String {
        return "{\(elements)}"
    }
}

var colors = ArraySet<String>()
colors.add("blue")
colors.contains("blue")
colors.contains("red")
colors.add("green")
colors.add("orange")

colors.remove("blue")
colors.contains("blue")

colors.add("brown")
colors.add("brown")
colors.remove("brown")
colors.remove("not present")


//hash tables
func hash(x: String) -> Int {
    return Int(x.unicodeScalars.first!.value)
}


struct StringHashSet: SetProtocol {
    var elements = [String?](count: 128, repeatedValue: nil)
    
    typealias ItemType = String
    mutating func add(item: String) {
    elements[hash(item)] = item
    }
    mutating func remove(item :String) {
        
    }
    func contains(item: String) -> Bool {
        
        return elements[hash(item)] == item
    }
    var description: String {
        return "{\(genres.elements.filter{$0 != nil})}"
    }
    
}

var genres = StringHashSet()

genres.add("Rock")
genres.add("Pop")
genres.add("Funk")

genres.contains("Rock")
genres.contains("Western")


func hashh(s: String) -> Int {
    // Character code of first letter
    return Int(s.unicodeScalars.first!.value)
}


var spellDict = StringHashSet()

for word in ["the", "quicj", "brown", "fox", "jumps", "over", "for", "jumps", "quick"] {
    spellDict.add(word)
}

spellDict

func spellCheck(str: String) -> Bool {
    for word in str.componentsSeparatedByString(" ") {
        if !spellDict.contains(word) {
            return false
        }
    }
    
    return true
}

spellCheck("the quick brown fox jumps over fox brown jumps quick")
spellCheck("the quick brwon fox jumps over fox brown jumps quick")
























