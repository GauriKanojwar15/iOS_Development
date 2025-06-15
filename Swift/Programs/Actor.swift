actor Flight{
    var seats:[String] = ["A1","A2","A3","A4"]
     func availableSeats()->[String]{
        return seats
     }
     func bookedSeats()->String {
        let seat = seats.first ?? ""
        seats.removeFirst()
        return seat
     }
}
Task{
    let aObj = Flight()
    print(await aObj.availableSeats())
    print(await aObj.bookedSeats())
    print(await aObj.availableSeats())
    print(await aObj.bookedSeats())
    print(await aObj.availableSeats())
}
