//Cloure- self contains block which can pass and use in our code
//Types of Closure(when we use closure as parameter in function) - AutoClosure,Trailing,Escaping ,NonEscaping

import Foundation


//Normal Function
func Demo(n1:Int,n2:Int) ->Int
{
    return n1*n2
}
var d = Demo(n1:10,n2:10)
print(d)//100



//Simple Closure
var A = {(p1:Int) in p1*p1}
print(A(10)) //100



//AuroClosure -> used keyword @autoclosure , it automaticaly wrap the code ,no need to specifiy syntax of closure
func Demo1(_ A: @autoclosure()->Bool)->Bool{
    if A(){
        return true
    }else{
        return false
    }
}
print(Demo1(2>1)) //true



//Trailing closure- parameter as closure should be last parameter or single parameter of function,
//  then we can use tailing closure(no need to specifity whole syntax we can directly use it)
func Demo2(A:()->Void){
    A()
}
Demo2{print("Trailing Closure with single para")}
func Demo3(a1:Int,A:()->Void){
    print(a1)
    A()
}
Demo3(a1:10){print("Trailing Closure with multiple para")}



//Escaping-> Its call when function returns, used @escaping keyword
func Demo4(A:@escaping(String)->Void){
    sleep(2)
    A("Data from escaping")
}
Demo4{result in print(result)}


//NonEscaping-> Its call like normal function, it i default closure
func Demo5(A:()->Void){
    A()
}
Demo5{print("hello non escaping")}