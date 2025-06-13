var array  = [11,11,22,23,24,11]
var f = array.filter{p1 in p1%2==0}
var m = f.map{p1 in p1+10}
var r = m.reduce(1){$0*$1}
print(f,m,r)




// var array = [11,22,33,44]
// var f = array.filter{p1 in p1%2 == 0}
// var m = f.map{p1 in p1*p1}
// var r = m.reduce(0){$0+$1}
// print("filter\(f)")
// print("map\(m)")
// print("reduce\(r)")


//filter : Filter is a Higher order function which takes collection and return element who satisfi the condition 
//           (means it will filter out element which satisfy condition from arrya) 

//map : Map is higher order function which take colletion as inpute and return new collection with transformed values

//Reduce : Reduce is higher order function take collection as inpute and it will give single value output by specific combine operation

