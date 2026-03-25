var arr:[Int] = [10,20,30,40,50]
print("array", arr)


//print Array Digits
for val in arr{
    print(val, terminator: " ")
}


// addition of array
var sum = 0
for i in arr{
    sum = sum + i
}
print("\nsum = ", sum)



// multiplication of array
var mul = 1
for i in arr{
    mul = mul*i
}
print("\nmultiplication=", mul)



//Factorial
var num = 5
var fact = 1
for i in 1...num{
    fact = fact*i
}
print("factorial", fact)



//print table of given number
var num1 = 2
for i in 1...10{
    print("\ntable of \(num1)*\(i)", num1*i)
}


//Even or Odd
var arrCheck: [Int] = [2,5,8,3,1]
for i in arrCheck{
    if i%2 == 0{
        print(i,"even")
    }
}


