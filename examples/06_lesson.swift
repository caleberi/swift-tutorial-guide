// Functions
func addToNumbers(){
    let a:Int = 12;
    let b:Int = 10;
    let c:Int = b+a;
    print(c)
}

addToNumbers()

// scope -> local variables & global variables

func  scope(){
    let a:Int = 34; // global to scope2
    let b:Int = 10;
    func scope2(){
        let c:Int = b+a; // local
        print(c)
    }
    scope2()
}


scope();

// func name()->return value{}
// function returning value

func echo45() -> Int{
    return 45;
}

print(echo45())


// func name(argumentLabel parameter:Datatype....)->return value{}
// function returning value with input parameter


func power(b base:Int,exp exponent:Int) -> Int {
    if exponent==0 {
        return 1;
    }
    return base * power(b:base,exp:exponent-1);
}

print(power(b:2,exp:4));


// func name( parameter:Datatype....)->return value{}
// function returning value with input parameter without labels

func factorial(n:Int) -> Int {
    if n==0 || n==1{
        return 1;
    }
    else {
        return n * factorial(n:n-1)
    }
    
}

print(factorial(n:5))


// func name(_ parameter:Datatype....)->return value{}
// function returning value with input parameter



func factorial2(_ n:Int) -> Int {
    if n==0 || n==1{
        return 1;
    }
    else {
        return n * factorial2(n-1)
    }
    
}

print(factorial2(5))

// function and parameter II

func myFirstFunction(){}
func addTwo(_a a:Int, _b b:Int)-> Int{
    return a + b
}

let g = addTwo(_a:1, _b:45)
print(g)

func summation (_ n:Int)-> Int{
    if n == 0{
        return 0
    }
    return n + summation(n-1)
}

func isEven(_ a:Int)-> Bool{
    if a % 2 == 0 {
        return true
    }
    return false
}

print(summation(45))
print(isEven(12))
