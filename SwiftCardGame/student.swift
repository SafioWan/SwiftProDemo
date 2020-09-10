//
//  student.swift
//  SwiftCardGame
//
//  Created by Safio on 2020/8/6.
//  Copyright © 2020 Safio. All rights reserved.
//

import Foundation

class Student: NSObject {
    
    static let share = Student()
    
    var studentName = ""
    //实例方法的参数名称和实例属性名称相同时候，参数名称优先，需要用self来区分属性名称
    func sayHi(studentName:String) {
        print("Hello,\(self.studentName)")
    }
    func eatAction(food:String) {
        print("eat,\(food)")
    }
    
}
let student: Student = {
    let student = Student()
    student.studentName = "SafioWan"
    student.sayHi(studentName: "SafioWan")
    student.eatAction(food: "Apple")
    return student
}()



struct Teacher {
    var name = "Linda"
    var age = 0
    mutating func changeName(){
        name = "Hanbing"
    }
    
    
}
func teacherPrint() {
    print(Teacher().name)
//    Teacher().changeName()
    print(Teacher().name)
    
    var sex : Sex = "tom"
    sex = "marry"
    sex = "gollum"
    print("This person' sex is,\(sex)")
}
  


enum Sex{
    case Male
    case Female
    case Unknow
}
let malesName = ["peter", "tom"]
let femalesName = ["marry", "taylor"]
extension Sex: ExpressibleByStringLiteral{
    init(stringLiteral value: String) {
        if(malesName.contains(value)){
            self = .Male
        }else if(femalesName.contains(value)){
            self = .Female
        }else{
            self = .Unknow
        }
        print(self)
    }
    init(extendedGraphemeClusterLiteral value: String) {
        self.init(stringLiteral: value)
    }
    init(unicodeScalarLiteral value: String) {
        self.init(stringLiteral: value)
    }
}


