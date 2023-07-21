import UIKit

var greeting = "Hello, playground"
print(greeting)

import SwiftUI

class Machine {
    //이넘은 밖에있어도 가능
    enum Skill {
        case plus
        case minus
        case multiple
        case divide
    }
    
    func calRun (skill: Skill ,fn: Double , sn : Double) -> Double{
        switch skill {
        case .plus :
            return Plus().skill(fn: fn, sn: sn)
        case .minus :
            return Minus().skill(fn: fn, sn: fn)
        case .multiple :
            return Multiply().skill(fn: fn, sn: sn)
        case .divide :
            return Divide().skill(fn: fn, sn: sn)
        default :
            break
        }
    }
}

class aaappp {
    func aa(fn : Double , sn : Double) -> Double {
        return 0.0
    }
}

class b : aaappp {
    override func aa(fn: Double, sn: Double) -> Double {
    return fn + sn
}
}



class Plus {
    func skill (fn: Double , sn : Double) -> Double {
        return fn + sn
    }
}

class Minus {
    func skill (fn: Double , sn : Double) -> Double {
        return fn - sn
    }
}

class Multiply {
    func skill (fn: Double , sn : Double) -> Double {
        return fn * sn
    }
}

class Divide {
    func skill (fn: Double , sn : Double) -> Double {
        return fn / sn
    }
}


let calculator = Machine()

var result = Machine().calRun(skill: Machine.Skill.divide, fn: 10.0, sn: 2.0)

print(result)






//class calculator {
//    func calMk1(skill: String, fnumber: Double, snumber: Double) -> Double {
//        if skill == "+" {
//            return fnumber + snumber
//        }else if skill == "-" {
//            return fnumber - snumber
//        }else if skill == "*" {
//            return fnumber * snumber
//        }else if skill == "/" {
//            return fnumber / snumber
//        }
//        return ""
//    }
//
//}
//
//var plus = calculator().calMk1(skill: "+", fnumber: 10, snumber: 20)
//var minus = calculator().calMk1(skill: "-", fnumber: 10, snumber: 20)
//var multiple = calculator().calMk1(skill: "*", fnumber: 10, snumber: 20)
//var devide = calculator().calMk1(skill: "/", fnumber: 4, snumber: 3)
//
//print(plus, minus)
//print(multiple, devide)

//전역변수. 클래스 밖


//class calAdd{
//    var outside = 0.0 //지역변수 클래스 안
//
//    func run(num1: Double , num2 : Double) {
//
//        let result = num1 + num2
//        outside = result
//
//        print(outside)
//    }
//}
//
//class calMinus {
//     func run(num1: Double , num2 : Double) {
//        num1 - num2
//    }
//}
//
//class calMultiple {
//     func run(num1: Double , num2 : Double) {
//        num1 * num2
//    }
//
//    class calDivide{
//        func run(num1: Double , num2 : Double) {
//            num1 / num2
//        }
//    }
//}
//
//var result = calAdd()
//print(result.run(num1: 3, num2: 2))
//print(result.outside)

