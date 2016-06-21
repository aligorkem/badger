//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Strategy
{
     
     public init()
     {
          /*
           
           What is it?
           The strategy pattern is used to create classes that can be extended without modification, through the application of algorithm objects that conform to a well-defined protocol.
           
           What are the benefits?
           The strategy pattern allows third-party developers to change the behavior of classes without modifying them and can allow low-cost changes to be made in projects that have expensive and lengthy validation procedures for specific classes.

           When should you use this pattern?
           Use this pattern when you need classes that can be extended without being modified.
           
           When should you avoid this pattern?
           There is no reason to avoid this pattern.
           
           How do you know when you have implemented the pattern correctly?
           The strategy pattern is implemented correctly when you can extend the behavior of a class by defining and applying a new strategy without needing to make any changes to the class itself.
           
           Are there any common pitfalls?
           No. The strategy pattern is simple to implement.

           Are there any related patterns?
           The strategy and visitor patterns are often used together.
           
           */
          
          let sequence = Sequence(1, 2, 3, 4);
          sequence.addNumber(10);
          sequence.addNumber(20);
          
          let sumStrategy = SumStrategy();
          let multiplyStrategy = MultiplyStrategy();
          
          let sum = sequence.compute(sumStrategy);
          print("Sum: \(sum)");
          
          let multiply = sequence.compute(multiplyStrategy);
          print("Multiply: \(multiply)");
          
          let filterThreshold = 10;
          let cstrategy = ClosureStrategy({values in
               return values.filter({ $0 < filterThreshold }).reduce(0, combine: {$0 + $1});
          });
          let filteredSum = sequence.compute(cstrategy);
          print("Filtered Sum: \(filteredSum)");

          
     }
     
}


