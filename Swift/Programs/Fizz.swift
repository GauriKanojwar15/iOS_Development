// func fizzBuzz(n: Int) -> Void {
//     for i in 1...n{
//       if(i%3==0 && i%5==0){
//         print("FizzBuzz")
//       }else if (i%3==0){
//         print("Fizz")
//       }else if (i%5==0){
//         print("Buzz")
//       }else{
//         print("\(i)")
//       }  
//     }
   

// }

// guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)else {
//     print("Invalid input")
//     exit(0)
// }

import Foundation

guard let input = readLine(),
      let n = Int(input.trimmingCharacters(in: .whitespacesAndNewlines)) else {
    print("Invalid input")
    exit(0)
}

for i in 1...n {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}