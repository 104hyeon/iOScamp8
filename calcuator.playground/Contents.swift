

class Calculator {
    
    // 값을 저장하는 프로퍼티
    var addOperator: AddOperation
    var subtractOperator: SubtractOperation
    var multiplyOperator: MultiplyOperation
    var divideOperator: DivideOperation
    var reminderOperator: ReminderOperation
    
    //초기화 하기
    init(addOperator: AddOperation, subtractOperator: SubtractOperation, multiplyOperator: MultiplyOperation, divideOperator: DivideOperation, reminderOperator: ReminderOperation) {
        self.addOperator = addOperator
        self.subtractOperator = subtractOperator
        self.multiplyOperator = multiplyOperator
        self.divideOperator = divideOperator
        self.reminderOperator = reminderOperator
        
    }
}

// 각 연산에 대한 클래스
class AddOperation {
    func add(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

class SubtractOperation {
    func subtract(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func multiply(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func divide(firstNumber: Int, secondNumber: Int) -> Double {
        guard secondNumber != 0 else {
            return 0
        }
        return Double(firstNumber) / Double(secondNumber)
    }
}

class ReminderOperation {
    func reminder(firstNumber: Int, secondNumber:Int) -> Int {
        guard secondNumber != 0 else {
            return 0
        }
        return firstNumber % secondNumber
    }
}

// 각 연산의 인스턴스
let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()
let reminderOperation = ReminderOperation()

// Calculator의 인스턴스
let calculator = Calculator(addOperator: addOperation, subtractOperator: subtractOperation, multiplyOperator: multiplyOperation, divideOperator: divideOperation, reminderOperator: reminderOperation)

calculator.addOperator.add(firstNumber: 17, secondNumber: 7)
calculator.subtractOperator.subtract(firstNumber: 15, secondNumber: 6)
calculator.multiplyOperator.multiply(firstNumber: 8, secondNumber: 4)
calculator.divideOperator.divide(firstNumber: 27, secondNumber: 9)
calculator.reminderOperator.reminder(firstNumber: 20, secondNumber: 7)


