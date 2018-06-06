//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Variables
let y = 100            // 상수

// var x:Int = 42
var x2:Int = 42        // Int 형 변수
var x = 42             // Int를 생략할 수 있다.

var myString = "Hello"  // string 객체 변수

// Control Flow
if x < 50 {
    print("x is", x, "and less then 50")
} else {
    print("x is", x, "and greater then or equal to 50")
}

// Classes
class ViewController : UIViewController {   // class [클래스명] : [상속받을 클래스명]
    // Instance Variables go here
    // Class functions go here
}

// Functions
func printHello() {                         // func [함수명]() {}
    print("Hello world")
}
printHello()

func printMessage(message : String) {       // func [함수명]([인자명]: [인자타입]) { // 구현부 }
    print(message)
}
printMessage(message: "Oi!")                // 함수명([인자명]: [인자값])

