// control flow

// MARK: for in loop
/*
for counter in lower ... upper{
    // live code
}
NOTE: [lower,upper) inclusive
*/

for index in 0...6{
    print(index)
}
var sum = 0;
for i in 0...10{
    sum += i;
}
print(sum)

// while loop
var counter = 10;

while counter > 0{
    var line:String = ""
    for  _ in 0...counter{
        line += "*";
    }
    print(line);
    counter -= 1; 
}

// repeat while -> do while

repeat {
    var line:String = ""
    for  _ in 0...counter{
        line += "*";
    }
    print(line);
    counter -= 1; 
}while (counter>0)


let things:[Int] = [1,2,3,4,5,6,7]

for thing in things{
    print(thing)
}

counter = 0 

while counter < things.count{
    print(String(counter) + " :" + String(things[counter]) )
    counter += 1
}