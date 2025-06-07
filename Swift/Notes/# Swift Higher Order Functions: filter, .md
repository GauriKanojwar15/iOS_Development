# Swift Higher Order Functions: filter, map, reduce

This document demonstrates the use of Swift's higher order functions: `filter`, `map`, and `reduce`.

---

## Example Code

```swift
var array = [11, 22, 33, 44]
var f = array.filter { p1 in p1 % 2 == 0 }
var m = f.map { p1 in p1 * p1 }
var r = m.reduce(0) { $0 + $1 }
print("filter\(f)")
print("map\(m)")
print("reduce\(r)")
```

---

## Explanations

- **filter**:  
  `filter` is a higher order function that takes a collection and returns the elements that satisfy a given condition.  
  *Example above: filters even numbers from the array.*

- **map**:  
  `map` is a higher order function that takes a collection as input and returns a new collection with transformed values.  
  *Example above: squares each filtered value.*

- **reduce**:  
  `reduce` is a higher order function that takes a collection as input and combines its elements into a single value using a specified operation.  
  *Example above: sums all the squared values.*

---

## Output

```
filter[22, 44]
map[484, 1936]
reduce2420
```