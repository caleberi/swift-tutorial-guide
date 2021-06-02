// Designated and Convenience Initializer
class Person{
    var name:String = ""
}

class BlogPost{
    // MARK : Properties
    var title:String?
    var url:String = ""
    var body:String = ""
    var author:Person?
    var numberOfComments:Int = 0

    init(){
        title ="My Title"
        author = Person()
    }

    // MARK : Convenience Initializer
    convenience init(customTitle:String){
        self.init()
        title =customTitle
    }
    // MARK : computed properties
    var fullTitle:String{
        if title != nil && author != nil{
            return title! + " by " + author!name
        }
        else if title != nil{
            return title!
        }else{
            return "Not available"
        }
    }
    func commentCount() -> Int {
        numberOfComments += 1;
        return numberOfComments;
    }
    // MARK : used var properties
    func shareArticle(){
        // var timestamp = "786" change to  if not used
        var _ = "786" 
        print(numberOfComments)
    }
}