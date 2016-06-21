//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_AbstractFactory
{
     
     public init()
     {
          /*
           
           What is it?
           The abstract factory pattern allows a calling component to create a group of related objects. The pattern hides the details of which classes are used to create the objects and the reason why they were selected from the calling component. This pattern is similar to the factory method pattern I described in Chapter 9 but presents the calling component with a set of objects.
           
           What are the benefits?
           The calling component doesn’t know which classes are used to create the objects or why they were selected, which makes it possible to change the classes that are used without needing to change the components that consume them.
           
           When should you use this pattern? 
           Use this pattern when you need to ensure that multiple compatible objects are used by a calling component without the component needing to know which objects are able to work together.
           
           When should you avoid this pattern?
           Do not use this pattern to create a single object; the factory method pattern is a simpler alternative that should be used instead.
           
           */
          
          let passengers = [1, 3, 5];
          
          for p in passengers {
               print("\(p) passengers: \(CarSelector.selectCar(p)!)");
          }
     }
     
}





