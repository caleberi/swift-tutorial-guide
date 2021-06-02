<img src="./banner.jpg" style="display:inline-block;padding:0% 20%;"/>

# Introduction to Swift Programming Language

> I have never used a mac book  at the the time of writing this document but I did get to practice swift programming language using windows code runner which runs and compile  swift code and gives you the resulting value

The Swift Programming Language is the authoritative reference for Swift, offering a guided tour, a comprehensive guide, and a formal reference of the language. [swift.org](https://swift.org/documentation/#the-swift-programming-language).

Swift is a fantastic way to write software, whether it’s for phones, desktops, servers, or anything else that runs code. It’s a safe, fast, and interactive programming language that combines the best in modern language thinking with wisdom from the wider Apple engineering culture and the diverse contributions from its open-source community. The compiler is optimized for performance and the language is optimized for development, without compromising on either. Swift is friendly to new programmers. It’s an industrial-quality programming language that’s as expressive and enjoyable as a scripting language. 

Swift defines away large classes of common programming errors by adopting modern programming patterns:

- Variables are always initialized before use.
- Array indices are checked for out-of-bounds errors.
- Integers are checked for overflow.
- Optionals ensure that nil values are handled explicitly.
- Memory is managed automatically.
- Error handling allows controlled recovery from unexpected failures.

With complie time optimization to get the most from a modern hardware ,  The syntax and standard library were designed based on the core guiding principle that the obvious way to write your code should also perform the best.

> Swift combines powerful type inference and pattern matching with a modern, lightweight syntax, allowing complex ideas to be expressed in a clear and concise manner


## Quick Tour Around Swift

Tradition suggests that the first program in a new language should print the words “Hello, world!” on the screen. In Swift, this can be done in a single line:

```swift 
print("Hello, world!")
// Prints "Hello, world!"
```
If you have written code in C or Objective-C, this syntax looks familiar to you—in Swift, this line of code is a complete program. You don’t need to import a separate library for functionality like input/output or string handling. Code written at global scope is used as the entry point for the program, so you don’t need a main() function. You also don’t need to write semicolons at the end of every statement.

This tour gives you enough information to start writing code in Swift by showing you how to accomplish a variety of programming tasks. 

- Simple Values 
--------------------------------------------------------
Use ```let``` and ```var``` are used for making constant and variable .  The value of a constant  doesn't need to be known at compile time , but mus t be assigned a value exactly once. This means you can use constants to name a value that you determine once but use in many places

```swift
var myVariable = 42
myVariable =  50
let myconstant = 12
```

> A constant or variable must have the same type as the value you want to assign to it. You don’t always have to write the type explicitly.

```swift
let implicitData = 34
let implicitDataV2:Double = 23.0
```
> Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.

```swift
let label = "The width is "
let width = 94
let msg = label + String(width)
```
There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses. For example:

```swift
// use for explicit conversion => \(variable_name)
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
```

```swift
// use [type] notation  to create  array and dictionaries and access their elements 
// by writing the index or key in brackets. A comma is allowed after the last element.

var shoppinglist = ["catfish","water"]
shoppingList[1]="timer"
var occupations = ["apple":4,"water":7]
var item:[Int] = [1,2,3,4,5]
var fruit:[String:Double] = [
    "pinepapple":23.0,
    "watermelon":45.0
]
fruits["watermelon"] = 70.67
//  Arrays automatically grow as you add elements.
item.append(8)
// To create an empty array or dictionary, use the initializer syntax.
let number:[Int] = [String]()
let emptyDict = [String:Double]()
/*
If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:]—for example, when you set a new value for a variable or pass an argument to a function.
*/

var shoppinglist = []
var occupations =[:]
```

- Control-flow
---------------------------------------
```If``` and ```switch``` are used to make conditionals, while ```for-in```,```while```,and```repeat-while``` are used to make loops
    Parentheses around the conditional and loops are made optional meaning you might not
include them.
> There must be equal space between operands and operators such as ```+=,-=,/=```

```swift
let individualScores = [75,43,107,87,12]
var teamScore = 0
for score in individualScores{
    if score > 50{
        teamScore += 1
    }else{
        teamScore -= 1
    }
}
print(teamScore)

```
> if statement, the conditional must be a Boolean expression—this means that code such as if score { ... } is an error, not an implicit comparison to zero. use if and let together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains nil to indicate that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional.

```swift
var optionalString:String? = "Hello"
print(optionalString == nil)
var optionalName:String? = "John Smith"
var greeting = "Hello"
// optional binding
if let name = optionalName{ // if true optional value is unwrapped and assigned
    greeting = "Hello , \(name)";
}

```

Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.

```swift
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
```

Notice how let can be used in a pattern to assign the value that matched the pattern to a constant.

After executing the code inside the switch case that matched, the program exits from the switch statement. Execution doesn’t continue to the next case, so you don’t need to explicitly break out of the switch at the end of each case’s code.

use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.

```swift
let interestingNumber:[String:[Int]] = [
    "Prime":[2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest =0
for (_,numbers) in interestingNumber{ // key-value pair
    for number in numbers{ // array 
        if number > largest{ 
            largest = number
        }
    }
}

print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {       // |  repeat this block at least once
    m *= 2     // |  while condition is true
} while m < 100
print(m)
// Prints "128"


var total = 0
for i in 0..<4 {
    total += i
}
print(total)
```