# Swift Closures Examples

This document demonstrates various types of closures in Swift, including their usage as function parameters.

## Types of Closures

When using closures as parameters in functions, there are several types:

- **AutoClosure**
- **Trailing Closure**
- **Escaping Closure**
- **Non-Escaping Closure**

---

## 1. Normal Function

```swift
func Demo(n1: Int, n2: Int) -> Int {
    return n1 * n2
}
var d = Demo(n1: 10, n2: 10)
print(d) // 100
```

---

## 2. Simple Closure

```swift
var A = { (p1: Int) in p1 * p1 }
print(A(10)) // 100
```

---

## 3. AutoClosure

Use the `@autoclosure` keyword to automatically wrap code in a closure.

```swift
func Demo1(_ A: @autoclosure () -> Bool) -> Bool {
    if A() {
        return true
    } else {
        return false
    }
}
print(Demo1(2 > 1)) // true
```

---

## 4. Trailing Closure

If a closure is the last parameter (or the only parameter) of a function, you can use trailing closure syntax.

```swift
func Demo2(A: () -> Void) {
    A()
}
Demo2 { print("Trailing Closure with single para") }

func Demo3(a1: Int, A: () -> Void) {
    print(a1)
    A()
}
Demo3(a1: 10) { print("Trailing Closure with multiple para") }
```

---

## 5. Escaping Closure

Use the `@escaping` keyword for closures that are called after the function returns.

```swift
func Demo4(A: @escaping (String) -> Void) {
    sleep(2)
    A("Data from escaping")
}
Demo4 { result in print(result) }
```

---

## 6. Non-Escaping Closure

By default, closures are non-escaping and are called like normal functions.

```swift
func Demo5(A: () -> Void) {
    A()
}
Demo5 { print("hello non escaping") }
```