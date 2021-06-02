// Array  && Dictionary

var a  = "dog"
var b = "cat"
var c = "bird"

a = "my" + a

let pets = ["dog","cat","bird"] 

print(pets[0])
print(pets[1])
print(pets[2])

for idx in 0...2{
    print(pets[idx])
}

for pet in pets{
    print(pet)
}

var names = [String]()
names.append("Kola")
names += ["Lola","Shade"]
names.append("Tola")
names.append("Liade")
print(names)
print(names)
print(names.count)


var scores = Dictionary<String ,Int>()
var marks = [String:Int]()
scores["Tim"] = 34
scores["Kola"] = 12
scores["Ope"] = 4
print(scores)

for (key,value) in scores{
    print(key + ": " + String(value))
}

var jnames:[String] = ["John", "Joe","Jake"]
var aNames:[Any] = ["John", "Joe",23,12,56,9.23]
for name in jnames{
    print("\(name)")
}

jnames[0] = "James"

// Dictionary
var cars:[String:Int] = ["BMW":3,"Honda":12,"Porsche":1]

for car in cars{
    print(car)
}