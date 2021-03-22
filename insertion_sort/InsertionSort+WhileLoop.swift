func insertionSortWhileLoop(_ items: [Int]) -> [Int] {
    var items = items
    
    for i in 1..<items.count {
        let key = items[i]
        var j = i
        while j > 0 && key < items[j - 1] {
            items[j] = items[j - 1]
            j -= 1
        }
        items[j] = key
    }
    
    return items
}

var items = [10,5,8,4,3,9,2,1,5]
print("insertionSortWhileLoop:", insertionSortWhileLoop(items))
