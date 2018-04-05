/**
 Functions in swift
 */


//functions are declared this way
//func name(paramName: ParamType, ...) -> return type
func myFirstFunction(firstParam:Int, secondParam:String) -> Double{
    print("firstParam", firstParam)
    print("secondParam", secondParam)
    //the return value
    return 5.9
}

//myFirstFunction is called like this. Please note that parameter names are mandatory
let result = myFirstFunction(firstParam: 4, secondParam: "Hello")
print("result of first function:", result)

//We can also specify that we don't want the parameter name when we call the function
//Here we use _ in order to make the first parameter anonymous
func mySecondFunction(_ firstParam:Int, secondParam:String) -> Int{
    //Inside the function the first parameter is accessed by its name
    print("firstParam", firstParam)
    print("secondParam", secondParam)
    //the return value
    return secondParam.count + firstParam
}

//The second parameter name must not be specified
let secondResult = mySecondFunction(4, secondParam: "Hello")
print("result of second function:", secondResult)

//Functions are first class in swift; they can be used as variables
//Functions can return a function

//In this example, we define a function generator.
//It is a function that generates a new function every time it is called
func generateIncrementer(start:Int) -> (() -> Int){
    var s = start
    func incrementer() -> Int{
        s += 1
        return s
    }
    return incrementer
}

//Here we generate an incrementer that starts from 5
let myIncrementer = generateIncrementer(start: 5)
print("myIncrementer", myIncrementer())
print("myIncrementer", myIncrementer())
print("myIncrementer", myIncrementer())
//We note here that the incrementer keeps the increment value. That's why the value increases after each call
//What happened is that the incrementer funtion 'captured' the s value and kept track of it betweeb calls

//Here we generate a new incrementer that is independent from the previous one and that starts from 10
let mySecondIncrementer = generateIncrementer(start: -10)
print("mySecondIncrementer", mySecondIncrementer())
print("mySecondIncrementer", mySecondIncrementer())
print("mySecondIncrementer", mySecondIncrementer())

