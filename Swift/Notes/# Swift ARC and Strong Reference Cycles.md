# Swift ARC and Strong Reference Cycles

This example demonstrates how to avoid strong reference cycles in Swift using `weak` references.

---

## Description

In Swift, classes use Automatic Reference Counting (ARC) to manage memory. When two objects hold strong references to each other, it can cause a strong reference cycle, preventing ARC from deallocating them.  
To avoid this, use `weak` or `unowned` references.

---

## Example

```swift
class Person {
    var name: String
    var bag: Bag?
    init(name: String, bag: Bag?) {
        self.name = name
        self.bag = bag
    }
    deinit {
        print("Persons Object removed")
    }
}

class Bag {
    var id: Int
    weak var person: Person?
    init(id: Int, person: Person?) {
        self.id = id
        self.person = person
    }
    deinit {
        print("Bag Object removed")
    }
}

var gauri: Person? = Person(name: "Gauri", bag: nil)
var bag: Bag? = Bag(id: 11, person: nil)

bag?.person = gauri
gauri = nil // "Persons Object removed" will be printed
```

- `Person` holds a strong reference to `Bag`.
- `Bag` holds a **weak** reference to `Person`.
- When `gauri` is set to `nil`, the `Person` object is deallocated, breaking the cycle.

---

This example is implemented in [StrongReferenceARC.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/StrongReferenceARC.swift).