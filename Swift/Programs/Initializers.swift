//init

//Default initializer//struct,class,Enum
class Sample{
    init(){

    }
}
var ob = Sample()


//Designated init//struct,class,Enum
class Sample1{
    var name: String
    var id: Int
    init(name:String, id:Int){
        self.name = name
        self.id = id
    }
}
var ob1 = Sample1(name:"Gauri",id:12)
print(ob1.name,ob1.id)


//Failable init?//struct,class,Enum
class Sample2{
    var name: String
    var id: Int
    init?(name:String, id:Int){
        if id<0{
            return nil
        }
        self.name = name
        self.id = id
    }
}
var ob2 = Sample2(name:"Gauri",id:12)
print(ob2?.name,ob2?.id)

//covenienced init//class
class Sample3{
    var name: String
    var id: Int
    init(name:String, id:Int){
        self.name = name
        self.id = id
    }
    convenience init(){
        self.init(name:"Isha",id:10)
    }
}
var ob3 = Sample3(name:"Gauri",id:12)
print(ob3.name,ob3.id)



//required init//class
class Sample3{
    var name: String
    var id: Int
    required init(name:String, id:Int){
        self.name = name
        self.id = id
    }
}
class Sample4:Sample3{
    var sname: String
    var sid: Int
    required init(name:String, id:Int){
        self.sname = name
        self.sid = id
        super.init(name: sname,id: sid)
    }
}
var ob3 = Sample3(name:"Gauri",id:12)
print(ob3.name,ob3.id)

