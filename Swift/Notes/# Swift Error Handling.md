# Swift Error Handling

This file demonstrates how to handle errors in Swift using `throw`, `try`, and `catch`.

---

## What is Error Handling?

**Error handling** is the process of responding to and recovering from error conditions in your program.

Common error sources:
- Syntactical errors
- Incorrect input
- Network problems
- Device failures
- Trying to access unavailable files

---

## Example

```swift
enum DivisibleError: Error {
    case divideByZero
}

func Divide(no1: Int, no2: Int) throws {
    if no2 == 0 {
        throw DivisibleError.divideByZero
    } else {
        print(no1 / no2)
    }
}

do {
    try Divide(no1: 40, no2: 0)
} catch DivisibleError.divideByZero {
    print("Error : You have Entered 0 Denominator")
}
```

- Define an error type by conforming to the `Error` protocol.
- Use `throws` in function signatures to indicate they can throw errors.
- Use `try` to call throwing functions.
- Handle errors using `do-catch` blocks.

---

This example is implemented in [ErrorHandling.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/ErrorHandling.swift).