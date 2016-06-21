//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Visitor
{
     
     public init()
     {
          /*
           
           What is it?
           The visitor pattern allows new algorithms to operate on collections of heterogeneous objects without needing to modify or subclass the collection class.
           
           What are the benefits?
           The visitor pattern is useful when you want to provide collection classes as part of frameworks without requiring third-party developers to modify the source code. This pattern is also useful in projects where modifying core classes triggers expensive testing procedures.
           
           When should you use this pattern? 
           Use this pattern when you have classes that manage collections of mismatched objects and you want to perform operations on them.

           When should you avoid this pattern?
           There is no need to use this pattern when all of the objects are of the same type or when the collection class can be readily modified.
           
           How do you know when you have implemented the pattern correctly?
           The pattern is implemented correctly when a visitor class can extend the behavior of the collection class by defining methods that handle each type of object in the collection.
           
           Are there any common pitfalls? 
           The only pitfall is trying to avoid using the double dispatch technique, which I describe in the “Understanding Double Dispatch” sidebar.

           Are there any related patterns?
           The visitor pattern is another way to conform to the open/closed principle supported by the strategy pattern I described in Chapter 24.
           
           */
          
          let shapes = ShapeCollection();
          let areaVisitor = AreaVisitor();
          shapes.accept(areaVisitor);
          print("Area: \(areaVisitor.totalArea)");
          print("---");
          let edgeVisitor = EdgesVisitor();
          shapes.accept(edgeVisitor);
          print("Edges: \(edgeVisitor.totalEdges)");

          
     }
     
}



