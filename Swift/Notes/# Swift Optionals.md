# Swift Optionals

This file demonstrates how to use **optionals** in Swift and the different ways to safely unwrap them.

---

## What is an Optional?

An **optional** is a type that can hold either a value or `nil`.  
Use optionals when a value may or may not be present.  
Declare an optional by adding `?` to the type.

---

## Unwrapping Optionals

Accessing an optional’s value directly can cause a runtime error if it’s `nil`.  
To safely access the value, you must **unwrap** the optional.  
Common techniques:

1. **Force Unwrapping** (unsafe): `optional!`
2. **Optional Chaining**: `optional?.property`
3. **Optional Binding**:  
   - `if let`  
   - `guard let`
4. **Nil Coalescing**: `optional ?? defaultValue`

---

## Example

```swift
class Sample {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    func DisplayDataPresent() {
        print("Data is present there")
    }
    func DisplayDataNotpresenr() {
        print("Data is present there")
    }
    func Data() {
        let name: String? = "Gauri"
        print("forcefully unwrap:", name!)         // Force unwrapping (unsafe)
        print("nilCoalescing", name ?? "")          // Nil coalescing
        guard let data = name else {               // Optional binding with guard let
            print("No data is prsent ")
            return
        }
        print(data)
    }
}

var sObj: Sample? = Sample(name: "Gauri", id: 12)

// Optional chaining
sObj?.DisplayDataPresent()

// Optional binding with if let
if let data = sObj {
    data.DisplayDataPresent()
} else {
    sObj?.DisplayDataNotpresenr()
}

// Using the Data() method to demonstrate unwrapping
sObj?.Data()
```

- `sObj?.DisplayDataPresent()` uses **optional chaining**.
- `if let data = sObj` uses **optional binding**.
- `guard let data = name` is another form of **optional binding** inside a method.
- `name!` demonstrates **force unwrapping** (unsafe).
- `name ?? ""` demonstrates the **nil coalescing** operator.

---

This example is implemented in [Optional.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/Optional.swift).