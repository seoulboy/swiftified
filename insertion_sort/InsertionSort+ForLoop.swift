func insertionSortForLoop(_ items: [Int]) -> [Int] {
    var items = items
    
    for i in 1..<items.count {
        var keyIndex = i
        for compareIndex in (0..<keyIndex).reversed() {
            let key = items[keyIndex]
            if items[compareIndex] > key {
                while keyIndex > compareIndex {
                    items[keyIndex] = items[keyIndex - 1]
                    keyIndex -= 1
                }
                items[compareIndex] = key
            }
        }
    }
    
    return items
}

var items = [10,5,8,4,3,9,2,1,5]
print("insertionSortForLoop:", insertionSortForLoop(items))
