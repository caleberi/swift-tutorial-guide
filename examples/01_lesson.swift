
var str = "Hello  World"
print(str)
var a = 1
var b = 9

var c = b
print(a+b)
print(a-b)
print(a/b)
print(a*b)
print(a>b)

var numberOfApples = 19 //variable
let PRESSURE = 100000 //constants
// PRESSURE =90


var x = 4
var y = 5

// z = 90 

class Person{
    static let dave = Person()
    var lastName = "Smith"
}

var john:Person = Person()
var mark:Person = Person()

print(Person.dave.lastName)

var f = 45; // integer
var name = "Joe" // string
var lastName:String = "123"
let age:Int = 34
let price:Double = 45.90
var height:Float = 2300.94409

class Queue{
    var size:Int?
    init(_ size:Int){
        if self.size == nil{
            self.size = size
        }
    }

    func enqueue(data value:Int){
        // ..... Code
    }

    func dequeue()->Int{
        // ..... Code
        return 0
    }

}

var queue:Queue = Queue(5)
print(queue.size!)

var isEmpty:Bool = false // Boolean
isEmpty = true

