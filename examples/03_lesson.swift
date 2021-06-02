// if statement

var str = "Caleb"

// if statement  --> uses python style and  cpp style

// if(str == "Caleb"){
//     print("Welcome 👍")
// }

/*
 AND -> &&
 OR -> ||
 NOT -> !
     > , < ,>= ,<=,!=,==,
*/


if str == "Caleb" {
    print("Welcome 👍")
}

// if-else if statement

if str == "Caleb" {
    print("Welcome 👍")
}
else if str == "Adewole"{
    print("Welcome")
}

// if-else  statement 
if str == "Caleb"{
    print("Welcome")
}else{
    print("Not Welcome")
}

func temp() -> Bool {
    let line = 68
    guard  line >= 56,line <= 107 else {
        return false
    }
    return true
}

print(temp())


var text:String?
text = "Life Support"
if let textValue = text{
    print(textValue)
} 

guard let value = text else{
    return
}
print(value)