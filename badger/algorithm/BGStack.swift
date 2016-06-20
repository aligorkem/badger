//
//  BGStack.swift
//  badger
//
//  Created by aligorkem on 17/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

public struct BGStack<T> {
     
     private var array = [T]()
     
     public var isEmpty: Bool {
          return array.isEmpty
     }
     
     public var count: Int {
          return array.count
     }
     
     public mutating func push(element: T) {
          array.append(element)
     }
     
     public mutating func pop() -> T? {
          return array.popLast()
     }
     
     public func peek() -> T? {
          return array.last
     }
}
