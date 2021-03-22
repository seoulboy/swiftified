class MinHeap {
    var items: [Int] = []
    var index = 0
    
    var size: Int { items.count }
    
    var leftChildIndex: Int { (index * 2) + 1 }
    var rightChildIndex: Int { (index * 2) + 2 }
    var parentIndex: Int { (index - 1) / 2 }
    
    var hasParent: Bool { parentIndex >= 0 }
    var hasRightChild: Bool { rightChildIndex < size }
    var hasLeftChild: Bool { leftChildIndex < size }
    
    // add element to heap
    func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    func heapifyUp () {
        index = size - 1
        
        while (hasParent && items[parentIndex] > items[index]) {
            swap(index, parentIndex)
            index = parentIndex
        }
    }
    
    // remove minimum element
    @discardableResult
    func poll() -> Int {
        swap(0, size - 1)
        let removedMinimum = items.removeLast()
        heapifyDown()
        return removedMinimum
    }
    
    @discardableResult
    func peek() -> Int {
        if size == 0 { fatalError() }
        return items[0]
    }
    
    func heapifyDown() {
        index = 0
        while (hasLeftChild) {
            var smallerChildIndex = leftChildIndex
            if hasRightChild && items[rightChildIndex] < items[leftChildIndex] {
                smallerChildIndex = rightChildIndex
            }
            
            if items[index] < items[smallerChildIndex] {
                break;
            } else {
                swap(index, smallerChildIndex)
                index = smallerChildIndex
            }
        }
    }
    
    func swap(_ firstIndex: Int, _ secondIndex: Int) {
        let temp = items[firstIndex]
        items[firstIndex] = items[secondIndex]
        items[secondIndex] = temp
    }
}

class MaxHeap {
    var items: [Int]
    var index = 0
    var size: Int {
        items.count
    }
    
    init(items: [Int] = []) {
        self.items = items
    }
    
    var leftChildIndex: Int { (index * 2) + 1 }
    var rightChildIndex: Int { (index * 2) + 2 }
    var parentIndex: Int { (index - 1) / 2 }
    
    var hasLeftChild: Bool { leftChildIndex < size }
    var hasRightChild: Bool { rightChildIndex < size }
    var hasParent: Bool { parentIndex >= 0 }
    
    func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    func heapifyUp() {
        index = size - 1
        while hasParent && items[parentIndex] < items[index] {
            swap(index, parentIndex)
            index = parentIndex
        }
    }
    
    func poll() -> Int {
        swap(0, size - 1)
        let removedMaximum = items.removeLast()
        heapifyDown()
        return removedMaximum
    }
    
    func peek() -> Int {
        if size == 0 { fatalError() }
        return items[0]
    }
    
    func heapifyDown() {
        index = 0
        while hasLeftChild {
            var largerChildIndex = leftChildIndex
            if hasRightChild && items[leftChildIndex] < items[rightChildIndex] {
                largerChildIndex = rightChildIndex
            }
            
            if items[index] > items[largerChildIndex] {
                break;
            } else {
                swap(largerChildIndex, index)
                index = largerChildIndex
            }
        }
    }
    
    func swap(_ firstIndex: Int, _ secondIndex: Int) {
        let temp = items[firstIndex]
        items[firstIndex] = items[secondIndex]
        items[secondIndex] = temp
    }
}
