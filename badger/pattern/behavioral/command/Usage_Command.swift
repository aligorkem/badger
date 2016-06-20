//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Command
{
     
     public init()
     {
          /*
               What is it?
               The command pattern is used to encapsulate details of how to invoke a method on an object in a way that allows the method to be invoked at a different time or by a different component.
 
               What are the benefits?
               There are lots of situations in which using a command is useful, but the most common ones are supporting undo operations and creating macros.

               When should you use this pattern?
               Use this pattern when you want to allow methods to be invoked by components that otherwise have no information about the object that will be used, the method that will be invoked, or the arguments that will be provided.
          */
          
          let calc = Calculator();
          calc.add(10);
          calc.multiply(4);
          calc.subtract(2);
          var total = calc.total
          
          let macro = calc.getMacroCommand();
          
          let calc2 = Calculator();
          macro(calc2);
          
          var total2 = calc2.total

          
     }
     
}
