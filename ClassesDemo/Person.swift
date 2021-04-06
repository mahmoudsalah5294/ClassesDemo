//
//  Person.swift
//  ClassesDemo
//
//  Created by Mahmoud Mohamed on 31/03/2021.
//

import Foundation

class Person{
    
    var salary = 0.0
    
    func getSalary()->Double{
        return salary
    }
}

class Employee: Person {
    
    func setSalary(salary:Double){
        self.salary = salary
    }
    override func getSalary() -> Double {
        return salary
    }
}

class Manger: Person {
    func setSalary(salary:Double){
        self.salary = salary
    }
    override func getSalary() -> Double {
        return salary*2
    }
}
