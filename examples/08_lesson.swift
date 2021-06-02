// init( )-> is a constructor
// you can have multiple init methods of different form

class Person{
    var name:String?;
    var age:Int = 0;
    init(_ _name:String, _ _age:Int){
        self.name = _name
        self.age = _age
    }
}

var person:Person = Person("Chris",43);
// Optional binding to get Optional value  from declearation

// if let actualTitle = person.name{
//     print(actualTitle)
// }

// or use force unwrapping

print(person.name!)

// or Test for nil
if person.name != nil{
    print(person.name!)
}


var u:Int? =  23
var v:Int? = 56

v = nil

v = 34

print(v!)

// optional binding
if let d = v{
    if let f = u{
        print (f+d)
    }
}

// to check type
print(type(of: person))