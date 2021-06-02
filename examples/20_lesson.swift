

protocol AddressDataSource {
    func  getAddress() -> String 
}


class Neighborhood {
    let homes: [Home] = []
}

class Home:AddressDataSource{
    let rooms: [Room]  = []
    func getRoom() -> String{
        return "123, Main Street"
    }
}

class Room{
    var color = "Blue"
    var width = 12
    var length = 32.5
    let area:Int? = width * Int(length)
    func getArea() -> Int{
        guard let area =self.area else{return}
        return area
    }
    func isOnSecondFloor() -> Bool{
        return false
    }
}

