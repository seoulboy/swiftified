func bubbleSort(_ items: [Int]) -> [Int] {
    var items = items
    
    var swapped = true
    var sortedCount = 0
    while swapped {
        swapped = false
        for i in 0..<items.count - 1 - sortedCount {
            if items[i] > items[i + 1] {
                let temp = items[i]
                items[i] = items[i + 1]
                items[i + 1] = temp
                swapped = true
                
            }
        }
        sortedCount += 1
    }
    
    return items
}

var items = [10,5,8,4,3,9,2,1,5]
print("bubbleSort:", bubbleSort(items))
