# Swift Enums

This file demonstrates the use of **enums** in Swift, including raw values, associated values, methods, and custom initializers.

---

## What is an Enum?

An **enum** is a type that groups related values and enables you to work with those values in a type-safe way.

Swift enums can have:
- **Raw values**: Each case has a default value of a specified type.
- **Associated values**: Each case can store different types of associated data.
- **Methods** and **initializers**.

---

## Examples

### 1. Raw Values

```swift
enum Direction1: String {
    case East
    case West
    case North
    case South
}
print(Direction1.East.rawValue) // "East"

enum Direction2: String {
    case East = "a"
    case West = "b"
    case North = "x"
    case South = "Z"
}
print(Direction2.East.rawValue) // "a"

enum Direction3: Int {
    case East = 1
    case West = 2
    case North = 3
    case South = 11
}
print(Direction3.East.rawValue) // 1
```

---

### 2. Associated Values

```swift
enum Result {
    case marks(Int, Int)
    case res(String)
}
var a = Result.marks(10, 20)
var b = Result.res("pass")
print(a, b)
```

---

### 3. Methods in Enum

```swift
enum Result1 {
    case marks(Int, Int)
    case res(String)
    func Display() -> String {
        switch self {
            case .marks(let x, let y):
                return "marks are \(x), \(y)"
            case .res(let x):
                return "result is \(x)"
        }
    }
}
var ob = Result1.marks(10, 20)
print(ob.Display())
var ob1 = Result1.res("Pass")
print(ob1.Display())
```

---

### 4. Initializer in Enum

```swift
enum Grade {
    case pass
    case fail

    init(score: Int) {
        if score >= 50 {
            self = .pass
        } else {
            self = .fail
        }
    }
}

let result = Grade(score: 72)
print(result) // Output: pass
```

---

All examples are implemented in [Enum.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/Enum.swift).