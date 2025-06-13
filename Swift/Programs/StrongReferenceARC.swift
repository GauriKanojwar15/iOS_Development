class Person{
    var name:String
    var bag: Bag?
    init(name:String,bag: Bag?){
        self.name = name
        self.bag = bag
    }
    func Display(){
        print("Inside Person")
    }
    deinit{
        print("Persons Object removed")
    }
}
class Bag{
    var id:Int
    weak var person: Person?
    init(id:Int,person: Person?){
        self.id = id
        self.person = person
    }
    func Display(){
        print("Inside Bag")
    }
}

var gauri:Person? = Person(name:"Gauri",bag: nil)
var bag:Bag? = Bag(id:11,person: nil)

bag?.person = gauri
gauri = nil