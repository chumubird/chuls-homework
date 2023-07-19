import UIKit

var greeting = "Hello, playground"
   print(greeting)

import SwiftUI



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


class calAdd{
    var outside = 0.0 //지역변수 클래스 안
    
    func run(num1: Double , num2 : Double) {
        
        let result = num1 + num2
        outside = result
        
        print(outside)
    }
}

class calMinus : calAdd{
    override func run(num1: Double , num2 : Double) {
        num1 - num2
    }
}

class calMultiple : calMinus{
    override func run(num1: Double , num2 : Double) {
        num1 * num2
    }
    
    class calDivide{
        func run(num1: Double , num2 : Double) {
            num1 / num2
        }
    }
}

var result = calAdd()
print(result.run(num1: 3, num2: 2))
print(result.outside)

//if는 조건 중첩 가능. 스위치는 안됨
//스위치는 디폴트 필수. 케이스 만들고싶은만큼 가능 ㅡ 기준에 해당하는거만 뽑아냄
//var x = [1 , 2 , 3 , 4]
switch result.outside {
case 0...2 :
    print("2 입니다.")
case 3...5 :
    print("3이상입니다")
default :
    print("없습니다.")
    break //여기까지
    print("없습니다1.")
 
}
// //이넘. 자료형 열거된거중에서
//enum operation {
//    case add
//    case subtract
//}
//var op : operation = .add
////키워드 키워드명 :데이터타입 = 값
//switch op{
//case .add :
//    print("더하기")
//case .subtract :
//    print("빼기")
//default :
//    break
//    
//}


////클래스는 주소. 스터럭트는 값을 참조
///클래스 : 오버라이드 가능.   스트럭트는 못함
///
///오버 라이딩.   오버 로딩 <------ 어려움
///ㄴ 재정의.       ㄴ








//class SimpleClass {
//var count: Int = 0
//
//deinit {
//print("할당 해제")
//}
//}
//struct SimpleStruct {
//var count: Int = 0
//}
//
//var class1 = SimpleClass()
//var class2 = class1
//var class3 = class1
//
//class1.count = 1
//class2.count = 2
//
//
//print(class1.count) // class3의 값을 변경했지만 참조타입이므로 class1도 변경 되는 것을 볼 수 있습니다.
//print(class2.count)
//print(class3.count)
//
//var struct1 = SimpleStruct()
//var struct2 = struct1
//var struct3 = struct1
//
//struct2.count = 2
//struct3.count = 3
//
//print(struct1.count) // 0
//print(struct2.count) // 2 <- 구조체는 값 타입이므로 항상 새로운 메모리가 할당됩니다.
//print(struct3.count) // 3
