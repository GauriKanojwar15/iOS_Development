for i in 65...90{
    if let char = UnicodeScalar(i){
        print(char, terminator: " ")
    }
}
print("\n")
for i in 97...122{
    if let char = UnicodeScalar(i){
        print(char, terminator: " ")
    }
}
print("\n")


for i in 65...90{
    if let char = UnicodeScalar(i){
        print(Character(char), terminator: " ")
    }
}
print("\n")


for i in 97...122{
    if let char = UnicodeScalar(i){
        print(Character(char), terminator: " ")
    }
}

//===========================================================

//Reverse

print("\n")
for i in stride(from: 122, through:97, by: -1){
    if let char = UnicodeScalar(i){
        print(Character(char), terminator: " ")
    }
}