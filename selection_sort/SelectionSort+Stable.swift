func selectionSortStable(_ items: [Int]) -> [Int] {
    var items = items
    
    for unsortedSubarrayStartingIndex in 0..<items.count {
        
        var minIndex = unsortedSubarrayStartingIndex
        for i in unsortedSubarrayStartingIndex + 1..<items.count {
            if items[i] < items[minIndex] {
                minIndex = i
            }
        }
        
        let key = items[minIndex]
        while minIndex > unsortedSubarrayStartingIndex {
            items[minIndex] = items[minIndex - 1]
            minIndex -= 1
        }
        items[unsortedSubarrayStartingIndex] = key
    }
    
    return items
}

var items = [10,5,8,4,3,9,2,1,5]
print("selectionSortStable:", selectionSortStable(items))
