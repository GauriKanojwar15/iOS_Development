# Swift Actors

This file demonstrates the use of **actors** in Swift for safe, concurrent access to mutable state.

---

## What is an Actor?

An **actor** is a reference type that protects its mutable state from data races in concurrent environments.  
Actors ensure that only one task accesses their mutable state at a time.

Actor is high level Api which manage concurrency.
It is looks same like class and just you need to use keywork **actor** , but behaviour is quite different.
It isolat the data and behaviour inside it. every function in actor is by defauly asyncronous, we need to use *await* to access it.
Everything from actor we need to access it from Task{}.

if data is muatable, actor will not allow you to access iy untill it is used *unioslated* keyworkd



---

## Example: Flight Seat Booking

```swift
actor Flight {
    var seats: [String] = ["A1", "A2", "A3", "A4"]

    func availableSeats() -> [String] {
        return seats
    }

    func bookedSeats() -> String {
        let seat = seats.first ?? ""
        seats.removeFirst()
        return seat
    }
}

Task {
    let aObj = Flight()
    print(await aObj.availableSeats())   // ["A1", "A2", "A3", "A4"]
    print(await aObj.bookedSeats())      // "A1"
    print(await aObj.availableSeats())   // ["A2", "A3", "A4"]
    print(await aObj.bookedSeats())      // "A2"
    print(await aObj.availableSeats())   // ["A3", "A4"]
}
```

- The `Flight` actor manages a list of seats.
- Methods are called with `await` to ensure safe, asynchronous access.

---

This example is implemented in [Actor.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/Actor.swift).