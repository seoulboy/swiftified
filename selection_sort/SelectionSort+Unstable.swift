func selectionSortUnstable(_ items: [Int]) -> [Int] {
    var items = items
    
    for unsortedSubarrayStartingIndex in 0..<items.count {
        
        var minIndex = unsortedSubarrayStartingIndex
        
        for i in unsortedSubarrayStartingIndex..<items.count {
            
            if items[i] < items[minIndex] {
                minIndex = i
            }
        }
        let temp = items[unsortedSubarrayStartingIndex]
        items[unsortedSubarrayStartingIndex] = items[minIndex]
        items[minIndex] = temp
        
    }
    
    return items
}

var items = [10,5,8,4,3,9,2,1,5]
print("selectionSortUnstable:", selectionSortUnstable(items))
