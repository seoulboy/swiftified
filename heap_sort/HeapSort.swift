func heapSort(_ items: inout [Int]) {
    
    let size = items.count
    
    // build max heap
    for index in stride(from: size/2-1, through: 0, by: -1) { // O(n)
        heapify(&items, index, size) // O(log n)
    }
    
    // poll and heapify
    for index in stride(from: size-1, to: 0, by: -1) { // O(n)
        swap(&items, index, 0)
        heapify(&items, 0, index) // O(log n)
    }
}


func heapify(_ items: inout[Int], _ index: Int, _ size: Int) {
    var largestItemIndex = index
    let leftChildIndex = index*2+1
    let rightChildIndex = index*2+2
    
    if leftChildIndex < size && items[leftChildIndex] > items[largestItemIndex] {
        largestItemIndex = leftChildIndex
    }
    
    if rightChildIndex < size && items[rightChildIndex] > items[largestItemIndex] {
        largestItemIndex = rightChildIndex
    }
    
    if largestItemIndex != index {
        swap(&items, largestItemIndex, index)
        heapify(&items, largestItemIndex, size)
    }
}

func swap(_ items: inout [Int], _ firstIndex: Int, _ secondIndex: Int) {
    let temp = items[firstIndex]
    items[firstIndex] = items[secondIndex]
    items[secondIndex] = temp
}

var array = [12,42,14,6,4,30,59,2,99,0]
heapSort(&array)
