// Type Alias


typealias Code = String

var code: Code = ""

func validateCodeBase(code: Code){

}
var msg: String = ""
validateCodeBase(code: msg)

typealias Address = [String:String]
var address: Address = ["Osun":"http://localhost:3000"]

typealias mapAddressToCodeFunc = (Address,Code)->[[Address,Code]]

func generateCodeAddress(fn:mapAddressToCodeFunc){}