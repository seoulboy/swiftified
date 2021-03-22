func quickSort(_ array: inout [Int], _ low: Int, _ high: Int) {
    guard high - low > 0 else { return }
    
    let partitionIndex = partition(&array, low, high)
    quickSort(&array, low, partitionIndex - 1)
    quickSort(&array, partitionIndex + 1, high)
}

func partition(_ array: inout [Int], _ low: Int, _ high: Int) -> Int {
    let pivotItem = array[high]
    var i = low - 1
    for j in stride(from: low, to: high, by: 1) {
        if array[j] <= pivotItem {
            i += 1
            swap(&array, i, j)
        }
    }
    swap(&array, high, i + 1)
    return i + 1
}

func swap(_ array: inout [Int], _ firstIndex: Int, _ secondIndex: Int) {
    let temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
}


var array = [99,10,22,5,100,9,39,67]
quickSort(&array, 0, array.count - 1)
