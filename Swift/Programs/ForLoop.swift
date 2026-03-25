
//Verical Print
// Closed range operator (includes 10)
for val in 0...10 {
    print(val)
}
print("\n")

// Half-open range operator (excludes 10)
for val in 0..<10 {
    print(val)
}
print("\n")

// For-in loop (array iteration)
var arr: [Int] = [10, 20, 30, 40, 50]
for val in arr {
    print(val)
}
print("\n")

// forEach loop (square of elements)
var arr1: [Int] = [10, 20, 30, 40, 50]
arr1.forEach { val in
    print(val * val)
}
print("\n")

//===================================================================

//Horizontal Print
// Closed range operator (includes 10)
for val in 0...10 {
    print(val, terminator: " ")
}
print("\n")


// Half-open range operator (excludes 10)
for val in 0..<10 {
    print(val, terminator: " ")
}
print("\n")


// For-in loop (array iteration)
var arrH: [Int] = [10, 20, 30, 40, 50]
for val in arrH {
    print(val, terminator: " ")
}
print("\n")


// forEach loop (square of elements)
var arr1H: [Int] = [10, 20, 30, 40, 50]
arr1H.forEach { val in
    print(val * val, terminator: " ")
}
print("\n")



//========================================================


for i in stride(from: 10, through: 1, by: -1) {
    print(i, terminator: " ")
}