//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation


public class Usage_Composite
{
     
     public init()
     {
          /*
           
           What is it?
           The composite pattern allows a tree of individual objects and collections of objects to be treated consistently.
           
           What are the benefits?
           The consistency that the composite pattern brings means that components that operate on the tree structure are simpler and do not need to have knowledge of the different objects types that are in use.
           
           When should you use this pattern?
           Use this pattern when you have a tree structure that contains leaf nodes and collections of objects.
           
           When should you avoid this pattern?
           This pattern is applicable only to tree data structures.
           
           How do you know when you have implemented the pattern correctly?
           The pattern is implemented correctly when components that use the tree structure can treat all of the objects it contains using the same type or protocol.
           
           Are there any common pitfalls? 
           This pattern is best suited to tree structures that are not modified once they have been created. Adding support for modifying the tree undermines the benefit of the pattern.
           
           Are there any related patterns?
           Many of the structural patterns have similar implementations but different intents. Ensure that you select the correct pattern from the ones I describe in this part of the book.
           */
          
          let doorWindow = CompositePart(name: "DoorWindow", parts:
               Part(name: "Window", price: 100.50),
                                         Part(name: "Window Switch", price: 12));
          
          let door = CompositePart(name: "Door", parts:
               doorWindow,
                                   Part(name: "Door Loom", price: 80),
                                   Part(name: "Door Handles", price: 43.40));
          
          let hood = Part(name: "Hood", price: 320);
          
          let order = CustomerOrder(customer: "Bob", parts: [hood, door, doorWindow]);
          order.printDetails();

          
          
     }
     
}









