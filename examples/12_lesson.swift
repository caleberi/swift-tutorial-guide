// enums  and switch & Protocols

enum States{
    case InProgress
    case Aborted
    case WillStart
    case Complete
}


var currentState:States
currentState = States.Aborted

func  checkState(st:States) -> String {
    switch st{
        case States.InProgress:
            return "InProgress"
        case States.Aborted:
            return "Aborted"
        case States.WillStart:
            return "WillStart"
        case States.Complete:
            return "Complete"
    }
}

print(checkState(st:currentState))

// TODO: Protocols
protocol ItemProtocol {
    var type:String { get set}
    var description:String { get set}
    var price:Double { get }
    func profit() -> Double
}

class Cart{

}

class Purchase:Car,Protocols{
    var type:String
    var description:String
    var price:Double
    var quantity:Double
    func profit() -> Double{
        return (self.quantity*self.quantity)/100
    }
}