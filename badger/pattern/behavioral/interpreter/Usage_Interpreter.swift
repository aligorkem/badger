//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Interpreter
{
     
     public init()
     {
          /*
           The interpreter pattern is used to evaluate sentences in a language.
           */
          
          var expression: IntegerExp?
          var intContext = IntegerContext()
          
          var a = IntegerVarExp(name: "A")
          var b = IntegerVarExp(name: "B")
          var c = IntegerVarExp(name: "C")
          
          expression = AddExp(op1: a, op2: AddExp(op1: b, op2: c)) // a + (b + c)
          
          intContext.assign(a, value: 2)
          intContext.assign(b, value: 1)
          intContext.assign(c, value: 3)
          
          var result = expression?.evaluate(intContext)
     
     }
     
}
