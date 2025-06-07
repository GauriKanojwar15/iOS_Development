# Swift Initializers

This document demonstrates different types of initializers in Swift, with code examples.

---

## 1. Default Initializer

A default initializer is automatically provided for classes, structs, and enums that have no custom initializers.

```swift
class Sample {
    init() {
        // Default initializer
    }
}
var ob = Sample()
```

---

## 2. Designated Initializer

A designated initializer is the primary initializer for a class, struct, or enum. It fully initializes all properties.

```swift
class Sample1 {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}
var ob1 = Sample1(name: "Gauri", id: 12)
print(ob1.name, ob1.id)
```

---

## 3. Failable Initializer

A failable initializer can return `nil` if initialization fails (e.g., invalid input).

```swift
class Sample2 {
    var name: String
    var id: Int
    init?(name: String, id: Int) {
        if id < 0 {
            return nil
        }
        self.name = name
        self.id = id
    }
}
var ob2 = Sample2(name: "Gauri", id: 12)
print(ob2?.name, ob2?.id)
```

---

## 4. Convenience Initializer

A convenience initializer is a secondary initializer that must call a designated initializer from the same class.

```swift
class Sample3 {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    convenience init() {
        self.init(name: "Isha", id: 10)
    }
}
var ob3 = Sample3(name: "Gauri", id: 12)
print(ob3.name, ob3.id)
```

---

## 5. Required Initializer

A required initializer must be implemented by every subclass.

```swift
class Sample3 {
    var name: String
    var id: Int
    required init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

class Sample4: Sample3 {
    var sname: String
    var sid: Int
    required init(name: String, id: Int) {
        self.sname = name
        self.sid = id
        super.init(name: sname, id: sid)
    }
}
var ob3 = Sample3(name: "Gauri", id: 12)
print(ob3.name, ob3.id)
```