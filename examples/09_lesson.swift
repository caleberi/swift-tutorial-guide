// Properties


class BlogPost{
    // MARK : Properties
    var title:String?
    var url:String = ""
    var body:String = ""
    var author:String?
    var numberOfComments:Int = 0

    // MARK : computed properties
    var fullTitle:String{
        if title != nil && author != nil{
            return title! + " by " + author!
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



let myPosts = BlogPost()

myPosts.title = "YES I AM GOOD"
print(myPosts.title)
myPosts.url = "http://www.example.com"
print(myPosts.shareArticle())