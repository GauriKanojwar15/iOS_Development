// map → transforms each element
// filter → selects elements based on condition
// reduce → combines all elements into one value


var arr:[Int] = [2,4,8,10]
var mapResult = arr.map{$0 * 2}
var filterResult = arr.filter{$0%2==0}
var reduceResult = arr.reduce(0){$0+$1}
var reduceResult1 = arr.reduce(0, +)
print(mapResult)
print(filterResult)
print(reduceResult)
print(reduceResult1)



let arr1 = [1, 2, 3, 4, 5, 6]

let result = arr1
    .filter { $0 % 2 == 0 }   // [2, 4, 6]
    .map { $0 * $0 }          // [4, 16, 36]
    .reduce(0, +)             // 56

print(result)

//===================================================================


var str = "I Love India"
var words = str.split(separator: " ")
print(words)
print(words.map{$0 + "amma"})
print(words.filter{$0 == "I"})
print(words.reduce("", +))


//=====================================================================




//filter : Filter is a Higher order function which takes collection and return element who satisfi the condition 
//           (means it will filter out element which satisfy condition from arrya) 

//map : Map is higher order function which take colletion as inpute and return new collection with transformed values

//Reduce : Reduce is higher order function take collection as inpute and it will give single value output by specific combine operation
