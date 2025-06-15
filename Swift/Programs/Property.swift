//properties are values associated with a class, struct, or enum.
//Propertys are three types in swift
// 1)Stored Property -> who can stored something
// 2)Computed property -> who can computed values 
// 3)Lazy Property -> it will not get initialize untill it will get called first time(it will save memary leackage)



class Sample{
    var lenth:Int = 10 //Stored property
    var bredth:Int = 12 //Stored property

    var area:Int {      //Computed property
        lenth*bredth
    }

    lazy var DisplayData = DisplayArea() //lazy Property (it will not get memorty untill it will get call first time)

    func DisplayArea() ->Int{
        return area
    }

}
var sOnj = Sample()
print(sOnj.DisplayData)