# Swift Properties

This file demonstrates the different types of properties in Swift: stored, computed, and lazy properties.

---

## What are Properties?

Properties are values associated with a class, struct, or enum.

### Types of Properties in Swift

1. **Stored Property**: Stores a constant or variable as part of an instance.
2. **Computed Property**: Calculates a value, rather than storing it.
3. **Lazy Property**: The initial value is not calculated until the property is first used (helps save memory).

---

## Example

```swift
class Sample {
    var lenth: Int = 10 // Stored property
    var bredth: Int = 12 // Stored property

    var area: Int {      // Computed property
        lenth * bredth
    }

    lazy var DisplayData = DisplayArea() // Lazy property

    func DisplayArea() -> Int {
        return area
    }
}

var sOnj = Sample()
print(sOnj.DisplayData) // Lazy property initialized and computed
```

- `lenth` and `bredth` are **stored properties**.
- `area` is a **computed property**.
- `DisplayData` is a **lazy property**; it is initialized only when accessed for the first time.

---

This example is implemented in [Property.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/Property.swift).