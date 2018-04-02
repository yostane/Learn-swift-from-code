/**
 
 Swift basic types
 */

//Swift is a strongly typed lanaguage. A variable's type must be know during declaration or initialisation.
//Additionnaly we cannot change the type of a variable to a non compatible type afterwards

//Swift has many types that allow to manipulate numbers, text, files, bytes, etc.

//Some types have a literal reprensentation:
let i:Int = 5
let d:Double = 7.5545
let s:String = "Swift is cool"
let c:Character = "C"
//A list of integers
let a:Array<Int> = [5, 48, 11]
//A dictionnary whose keys are string and values are of type double
let dict:Dictionary<String, Double> = ["gravity": 10, "pi": 3.14]


//In swift, we cannot change the type of a variable to a non compatible type afterwards using assignement '='
var myInt = 5
//Here, i is of type int
print(type(of: myInt))

//The following statement fais to compile because and Int variable is not a Double
//i = 6.5
//This also fails
//i = "Hello"

//In order to convert a type to another one, you need to create a new instance
myInt = Int(6.5)
//convert a string to an int
myInt = Int("123")!


//Swift defines the Any type that allow to contain any type of data.
//Use this type carefully, because you lose type checking during compilation
var joker:Any
joker = 6
joker = "Swift"
