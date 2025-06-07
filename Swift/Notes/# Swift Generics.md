# Swift Generics

This file demonstrates how to use generics in Swift for functions, structs, and classes.
Generic -> Designed code in such a way that method ,struct can asccess with any type
Generic increase Reusability
Generic reduce Dublication

---

## 1. Generic Function

A function that works with any type.

```swift
func Display<T>(value: T) {
    print(value)
}
Display(value: 10)
Display(value: 11.11)
Display(value: "Hi Welcome")
```

---

## 2. Generic Swap Function

A function to swap two values of any type.

```swift
func Swap<T>(val1: inout T, val2: inout T) {
    let Temp = val1
    val1 = val2
    val2 = Temp
}
var a = 11
var b = 22
Swap(val1: &a, val2: &b)
```

---

## 3. Generic Struct

A stack struct that can store any type.

```swift
struct stack<T> {
    var items: [T] = []
    mutating func push(_ i: T) { items.append(i) }
    mutating func pop() { items.removeLast() }
    func Display() { print("struct Data", items) }
}
var ob = stack<Int>()
ob.push(10)
ob.Display()
```

---

## 4. Generic Class

A stack class that can store any type.

```swift
class Sample<T> {
    var items: [T] = []
    func push(_ i: T) { items.append(i) }
    func pop() { items.removeLast() }
    func Display() { print("class Data", items) }
}
var ob1 = Sample<Int>()
ob1.push(10)
ob1.Display()
```

---

All examples are implemented in [Generic.swift](Generic.swift).