func recursiveBubbleSort(_ items: [Int], _ unsortedElementCount: Int) -> [Int] {
    if unsortedElementCount == 1 {
        return items
    }
    
    var items = items
    var swapped = false
    for i in 0..<unsortedElementCount - 1 {
        if items[i] > items[i+1] {
            let temp = items[i]
            items[i] = items[i+1]
            items[i+1] = temp
            swapped = true
        }
    }
    
    if !swapped {
        return items
    }
    
    return recursiveBubbleSort(items, unsortedElementCount - 1)
}

var items = [10,5,8,4,3,9,2,1,5]
print("recursiveBubbleSort: \(recursiveBubbleSort(items, items.count))")
