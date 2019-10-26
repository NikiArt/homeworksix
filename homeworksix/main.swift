//
//  main.swift
//  homeworksix
//
//  Created by Nikita Boiko on 25.10.2019.
//  Copyright © 2019 Nikita Boiko. All rights reserved.
//

import Foundation

class Queue<T> {
    private var elements: [T] = []
    func push(_ element: T) {
        elements.append(element)
    }
    func pop() -> T? {
        return elements.removeFirst()
        
    }
    var length : Int {
        return elements.count
    }
    
    subscript(element: Int) -> T? {
        
        if element < elements.count {
            return elements[element]
        } else {
            return nil
        }
    }
    
    func filter(closure: (T) -> Bool) -> [T]{
        var result = [T]()
        for element in elements {
            if closure(element) {
                result.append(element)
            }
        }
        return result
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        var printString: String = ""
        for element in elements {
            printString.append("\(element) ")
        }
        return printString
    }
}

var array = Queue<Int>()
array.push(1)
array.push(2)
array.push(3)
array.push(4)
array.push(5)
array.push(6)
array.push(7)
print(array)
print(array.pop())
print(array)
print(array[10])
