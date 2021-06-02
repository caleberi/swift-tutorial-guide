// Strings

var first: String? ="Steve"
var last: String?  = "Jobs"
let fullName: String = "\(first) \(last)"
let age:Int = 23
let introduct: String = "Name : \(fullName) \n Age:\(age)"


fullName.replaceSubrange(bound:0...7, with:"Yes")
let length:Int = fullName.count