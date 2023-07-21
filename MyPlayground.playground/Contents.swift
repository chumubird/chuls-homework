import UIKit

var greeting = "Hello, calculator lv-3"
print(greeting)

import SwiftUI


//계산 lv-3//

class Machine {
    //enum은 밖에있어도 가능하다고함
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

///계산기 lv-1
///


var hi = "Hello, calculator lv-1"
print(hi)


//계산 lv - 1

class calculator1 {
    func calMk1(skill: String, fnumber: Double, snumber: Double) -> Double {
        if skill == "+" {
            return fnumber + snumber
        }else if skill == "-" {
            return fnumber - snumber
        }else if skill == "*" {
            return fnumber * snumber
        }else if skill == "/" {
            return fnumber / snumber
        }
        return 0
    }

}

var plus1 = calculator1().calMk1(skill: "+", fnumber: 10, snumber: 20)
var minus1 = calculator1().calMk1(skill: "-", fnumber: 10, snumber: 20)
var multiple1 = calculator1().calMk1(skill: "*", fnumber: 10, snumber: 20)
var devide1 = calculator1().calMk1(skill: "/", fnumber: 4, snumber: 3)

print(plus1, minus1)
print(multiple1, devide1)





