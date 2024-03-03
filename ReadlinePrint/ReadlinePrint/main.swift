//
//  main.swift
//  ReadlinePrint
//
//  Created by Chetan Agarwal on 02/02/21.
//

//https://www.journaldev.com/19612/swift-readline-swift-print

import Foundation

/*
print(1...5)
print("1","3","2","4", separator: "::")
print("1","3","2","4", terminator: "!")
 */

// ---------------------
//: # Simple readLine() implemenation
//let str = readLine()
//print(str ?? "")
//
//if let str2 = readLine(){
//    print(str2)
}
// ---------------------
//: Check if the entered value is valid or not
//if let input = readLine(){
//    if let int = Int(input){
//        print("valid")
//    }
//    else{
//        print("not valid")
//    }
//}

//---------------------

//: Reading Input Separated by Spaces
//
//let arr = readLine()?.split { $0 == " " }.map(String.init)
//if let strArr = arr{
//    print(strArr)
//}


// ----------------------------------------
//: Reading a 2D Array
// Console will as 4 times to add a series of numbers with spaces
// numbers will be added in the array
// If any string is added then it will not be added and informed though print statement

//var arr = [[Int]]()
//for _ in 0...4 {
//    var aux = [Int]()
//
//    _ = readLine()?.split(separator: " ").map({
//        if let x = Int($0) {
//        aux.append(x)
//        }
//        else{
//            print("Invalid Integer found with value : \($0)")
//        }
//    })
//    arr.append(aux)
//}
//
//print(arr)

// ----------------------------------------
//: Reading 2 Int from a line


//var a = 0
//var b = 0
//
//var intArray = [Int]()
//_ = readLine()?.split(separator: " ").map({
//    if let x = Int($0){
//        intArray.append(x)
//    }
//})
//
//if intArray.count >= 2{
//    a = intArray[0]
//    b = intArray[1]
//}
//print(a)
//print(b)
