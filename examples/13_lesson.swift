// Strong & Weak Memory & Closures & Lambda

weak var str = "lorem ipsum"  // weak memory
var longlifetime:Int = 45 // by default this is strong object

class  Child {
    weak var balloon:String = "str"
}

var joe = Child() // once joe is not been used then Child().balloon get freed

var result:((Int) ->Bool)?

func square(n:Int) -> Int {
    return n*n
}

result = square(n:23)


func logger(fn:((String)->String)?){
    var wrapper = "Logger :->"
    return fn(wrapper)
}

var mf :(Int)->Bool = {number in 
    if number >3{
        return true
    }
    return false
}

let res = mf(4)