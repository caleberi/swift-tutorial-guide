// Classes

class BlogPost{ // Reference
    var title:String = ""
    var url:String = ""
    var body:String = ""
    var author:String = ""
    var numberOfComments:Int = 0
    func commentCount() -> Int {
        numberOfComments += 1;
        return numberOfComments;
    }
}

let blogOne = BlogPost()
blogOne.title = "Green Gas"
blogOne.url = "http://www.google.com"
blogOne.body = "Green"
blogOne.author = "Hebronace"

print(blogOne.commentCount())

class Car{
    var topSpeed = 200
    func drive(){
        print("Driving at \(topSpeed)")
    }
}

// class FutureCar{
//     var topSpeed = 250
//     func drive(){
//         print("Driving at \(topSpeed)")
//     }
//     func fly(){
//         print("Flying")
//     }
// }

// inhweitance
class FutureCar : Car {
    // overriding
    override func drive(){
        super.drive()
        print("Driving at \(topSpeed+70)")
    }

    func fly(){
        print("Flying")
    }
}

let h = FutureCar();
h.drive()
h.fly()

 //==================================================================
 //                       CLASS AND STRUCT
 //==================================================================

class Vehicle{} // Base Class
class Car:Vehicle{
    var color:String
    var model:String
    init(color:String, model:String){
        self.color = color
        self.model = model
    }
    func drive(){}
} // inherit from Vehicle
class BMW:Car{} // inherit from Car 



struct Node{ // value type
    var data:Int?
    var next:Node
}

