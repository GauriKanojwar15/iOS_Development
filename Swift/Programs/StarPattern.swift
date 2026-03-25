//number peramid patter 🔼
var num2 = 5 
for i in 0...num2{
    for j in 0...i{
        print(i, terminator: " ")
    }
    print("\n")
}
print("\n\n\n")



//number peramid patter 🔽
for i in stride(from:num2, through:0, by:-1){
     for j in 0...i{
        print(i, terminator: " ")
    }
    print("\n")
}
print("\n\n\n")


//number peramid patter 🔼

for i in 0...num2{
    for j in 0...i{
        print(j, terminator: " ")
    }
    print("\n")
}
print("\n\n\n")



//number peramid patter 🔽
for i in stride(from:num2, through:0, by:-1){
     for j in 0...i{
        print(j, terminator: " ")
    }
    print("\n")
}
print("\n\n\n")



//star peramid patter 🔼
for i in 0...num2{
    for j in 0...i{
        print("*", terminator: " ")
    }
    print("\n")
}
print("\n\n\n")



//star peramid patter 🔽
for i in stride(from:num2, through:0, by:-1){
     for j in 0...i{
        print("*", terminator: " ")
    }
    print("\n")
}
print("\n\n\n")