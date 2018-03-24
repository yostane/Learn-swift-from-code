
/**
Swift constats and variables
 */

//Variables are declared using the 'var' keyword
var year = 2017
//Swift infers the type of the variable during the initialization
//Here, the compiler sets the type of "text" to "string", bcause it is initialized using a String whose value is "Hello"
var text = "Hello"

//we can log the value of a variable to the console using print
print(year);
print(text);

//We can also add a description when printing
print("The year is: ", year)

//please note thet we end statemetns using a new line
//we can also specify the type during declaration
var month:Int = 11

//In swift, you have to at least define explicitly the variable type or initialize it.
//These are correct
var correct1 = 45
var correct2:Int
var correct3:String = "Yay !"
//This is incorrect
//var incorreclyDefinedVariable

//Swift is strongly typed (We can only set a value that has the same type, or is a subclass, or conforms to the type of the variable defined during its declaration)
//this code will fail during compilation because month is an Int
//month = "march"

//A variable is mutable (its value can change over time).
//Here, I change the value of the variable 'month' that was previously defined
month = 4
print("new month", month)
text = "Hello World"
print("New text", text)

//An immutable variable is called constant (its value cannot be changed)
//We can define constants or immutable values using 'let' instead of 'var'
let constantMonth = 5
print(constantMonth)
let message = "Learn swift from code"

//This code will make the compilaiton fail because the swift compiler forbids changing a constant
//constantMonth = 9

//We can replace values of variable inside string using \(variable or constant). This technique is called: interpolation
var dateText:String
dateText = "\(message). The date is: 25/\(month)/\(year)"
print(dateText)
