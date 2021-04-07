//
//  IntStack.swift
//  Task 2
//
//  Created by iosdev on 28.3.2021.
//

import Foundation

class IntStack {
    
    private var stackArray = [Int]()
    
    //create push function
    func push(_ numberToPush: Int){
        self.stackArray.append(numberToPush)
    }
    
    //create pop function
    func pop() -> Int? {
        return stackArray.popLast()
    }
    
    //create hasTwo function
    func hasTwo() -> Bool {
        if stackArray.count>=2 {
            return true
        }
        else{
            return false
        }
    }
}

