 /*Optional is a datatype where we can store data or not(we can keep it nil), 
 we can make optinaL by "?".
 whene we dont know there is data will present or not, so we can made it optional.
 if it is optional and data is not there but still we trying to access it , 
 and will give fatal error. and it will have data it will give you optinal data.
 To avaoid the fatal error, and original data(nonoptinal), we need unwrap it.
 for unwrapping we are having some techniques:
 1)Forcefully unwrap (unsafe)
 2)Optinal Chaining(calling safely things if only data is only present there)
 3)optinal Binding(will check conditions if data is present or not , if data is there it will unwrap)
    a)if let
    b)guard let
 4)NilExclousing(a ?? "")*/


 class Sample{
    var name: String
    var id:Int
    init(name: String,id:Int){
        self.name = name
        self.id = id
    }
    func DisplayDataPresent(){
        print("Data is present there")
    }
    func DisplayDataNotpresenr(){
        print("Data is present there")
    }

    func Data(){
        let name:String? = "Gauri"
        print("forcefully unwrap:",name!)
        print("nilExclusing", name ?? "")
        guard let data = name else{
            print("No data is prsent ")
            return
        }
        print(data)
    }

 }

var sObj:Sample? = Sample(name: "Gauri", id:12)
sObj?.DisplayDataPresent()

if let data = sObj{
    data.DisplayDataPresent()
}else{
    sObj?.DisplayDataNotpresenr()
}

sObj?.Data()


