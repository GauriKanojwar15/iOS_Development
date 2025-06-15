# Swift Singleton Pattern

This file demonstrates the Singleton design pattern in Swift, including thread safety considerations.

---

## What is a Singleton?

A **Singleton** ensures a class has only one instance and provides a global point of access to it.
Singleton is a design pattern which ensure that class can have single object which can be access globally.

**Examples:**  
- Manager of a team  
- Public lobby in a hotel  
- Audio Player

---

## Basic Singleton in Swift

Swift’s static properties are thread-safe by default, so the basic Singleton implementation is safe for most use cases.

```swift
class Singleton {
    static let sObj = Singleton()
    private init() { }
    func displayData() {
        print("Singleton is called")
    }
}

Singleton.sObj.displayData()
```

---

## Singleton with Manual Thread Safety

If your singleton contains mutable state property that can be accessed by multiple threads, you must ensure thread safety manually (e.g., using GCD).
(if we are having mutable variable in it , which can be change by myltiple threads at single time ,reace condition can occure , so we have to make it manualy thread safe by using GCD)

```swift
class AudioPlayer {
    static let aObj = AudioPlayer()
    var queue = DispatchQueue(label: "com.audioPlayer.syncQueue")
    var isPlay = false
    private init() { }

    func playSong1() {
        queue.sync {
            isPlay = true
            print("playing song 1")
        }
    }
    func playSong2() {
        queue.sync {
            isPlay = true
            print("playing song 2")
        }
    }
    func playSong3() {
        queue.sync {
            isPlay = true
            print("playing song 3")
        }
    }
    func stop() {
        queue.sync {
            isPlay = false
            print("songs stopped")
        }
    }
    func getStatus() -> Bool {
        return queue.sync { isPlay }
    }
}

let a = AudioPlayer.aObj
a.playSong1()
print("Is playing: \(a.getStatus())")
```

---

All examples are implemented in [Singleton.swift](https://github.com/GauriKanojwar15/iOS_Development/blob/main/Swift/Programs/Singleton.swift).