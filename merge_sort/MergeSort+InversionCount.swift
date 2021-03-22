func mergeSort(_ array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

var inversionCount = 0

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    
    var orderedArray = [Int]()
    var rightIndex = 0
    var leftIndex = 0
    
    while leftIndex < left.count && rightIndex < right.count {
        if right[rightIndex] >= left[leftIndex] {
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            orderedArray.append(right[rightIndex])
            rightIndex += 1
            inversionCount += left.count - leftIndex
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

mergeSort([8,4,2,1])
print(inversionCount)
