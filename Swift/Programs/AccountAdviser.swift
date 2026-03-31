  //  11. Split 2 array from 1 array , first array sum is equal to second array sum,  return what changes number required to make that two arrays some equal to each other

import Foundation
func minOperationsToBalance(_ arr: [Int]) -> Int {
    let total = arr.reduce(0, +)
    
    var leftSum = 0
    var minDiff = Int.max
    
    // Try all split points
    for i in 0..<arr.count - 1 {
        leftSum += arr[i]
        let rightSum = total - leftSum
        
        let diff = abs(leftSum - rightSum)
        minDiff = min(minDiff, diff)
    }
    
    return minDiff / 2
}

// 🔽 Function Call
let arr = [3, 3, 3, 6, 9]
let result = minOperationsToBalance(arr)

print("Minimum operations:", result)


//[3, 3, 3, 6, 9]
//Left  = [3,3,3] = 9
//Right = [6,9]   = 15
//Target = 12

// Adjust Left (9 → 12)
// 3 → 4 (+1)
// 3 → 4 (+1)
// 3 → 4 (+1)
// 👉 3 operations
// Adjust Right (15 → 12)
// 9 → 6 (-3)
// Left  = 12
// Right = 12