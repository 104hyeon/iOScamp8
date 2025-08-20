//import UIKit

class Calculator {
    
    func sum(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
    func subtract(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
    
    func multiply(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
    
    func divide(firstNumber: Int, secondNumber: Int) -> Double {
        guard secondNumber != 0 else {
            return 0
        }
        return Double(firstNumber) / Double(secondNumber)
    }
    
}

let calcuator = Calculator()

let sumResult = calcuator.sum(firstNumber: 10, secondNumber: 15)
print(sumResult)

let subtractResult = calcuator.subtract(firstNumber: 20, secondNumber: 7)
print(subtractResult)

let multiplyResult = calcuator.multiply(firstNumber: 5, secondNumber: 9)
print(multiplyResult)

let divideResult = calcuator.divide(firstNumber: 15, secondNumber: 3)
print(divideResult)


