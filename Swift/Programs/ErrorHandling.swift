/*Error Handling is collection of responding and recovering error conditions
    Error -> Unexpected event occure during execution 
    Erros can be:
    1)Syntactical error
    2)Incorrect input
    3)Network problem
    4)Device failure
    5)Trying to access unavailable file */


enum DivisibleError:Error{
    case divideByZero
}

func Divide(no1:Int, no2:Int) throws{
    if no2 == 0{
        throw DivisibleError.divideByZero
    }else{
        print(no1/no2)
    }
}

do{
    try Divide(no1:40, no2:0)
} catch DivisibleError.divideByZero{
    print("Error : You have Entered 0 Denominator")
}