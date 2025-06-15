/* Enum: Collection of relative similar values
   In Swift 2 types of Values
        1)Raw values (Each cases can have its defalut values)
        2)Associate values (Each cases can have different types of data )
   In Swift we are having powerfull feacher with Enum, that we can write Methods and init inside Enum*/


   //Raw Values
   enum Direction1:String{
        case East 
        case West
        case North
        case South
   }
   print(Direction1.East.rawValue)
   enum Direction2:String{
        case East = "a"
        case West = "b"
        case North = "x"
        case South = "Z"
   }
   print(Direction2.East.rawValue)
   enum Direction3:Int{
        case East = 1
        case West = 2
        case North = 3
        case South = 11
   }
   print(Direction3.East.rawValue)




   //Assosiate Values
   enum Result{
        case marks(Int,Int) 
        case res(String)
   }
   var a = Result.marks(10,20)
   var b = Result.res("pass")
   print(a,b)
   




   //Function in Enum
   enum Result1{
        case marks(Int,Int) 
        case res(String)
        func Display() -> String{
            switch self{
                case .marks(let x, let y):
                return "marks are \(x), \(y)"
                case .res(let x):
                return "result is \(x)"
            }
        }
   }
   var ob = Result1.marks(10,20)
   print(ob.Display())
   var ob1 = Result1.res("Pass")
   print(ob1.Display())



   //Init in Enum
   enum Grade {
    case pass
    case fail

    init(score: Int) {
        if score >= 50 {
            self = .pass
        } else {
            self = .fail
        }
    }
}

let result = Grade(score: 72)
print(result) // Output: pass
