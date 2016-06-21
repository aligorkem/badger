//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Prototype
{
     
     public init()
     {
          /*
           
           What is it?
           The prototype pattern creates new objects by copying an existing object, known as the prototype.
           
           What are the benefits?
           The main benefit is to hide the code that creates objects from the components that use them; this means that components don’t need to know which class or struct is required to create a new object, don’t need to know the details of initializers, and don’t need to change when subclasses are created and instantiated. This pattern can also be used to avoid repeating expensive initialization each time a new object of a specific type is created.
           
           When should you use this pattern?
           This pattern is useful when you are writing a component that needs to create new instances of objects without creating a dependency on the class initializer.
           
           When should you avoid this pattern?
           There are no drawbacks to using this pattern, but you should understand the other patterns in this part of the book to ensure that you pick the most suitable for your application.
           
           How do you know when you have implemented the pattern correctly?
           To test for an effective implementation of this pattern, change the initializer for the class or struct used for the prototype object and check to see whether a corresponding change is required in the component that creates clones. As a second test, create a subclass of the prototype’s class and ensure that the component can clone it without requiring any changes. See the “Implementing the Prototype Pattern” section.
           
           Are there any common pitfalls?
           The main pitfall is selecting the wrong style of copying when cloning the prototype object. There are two kinds of copying available—shallow and deep—and it is important to select the correct kind for your application. See the “Understanding Shallow and Deep Copying” section for details.
           
           Are there any related patterns?
           The most closely related pattern is the object template pattern, which I describe in Chapter 4. Also see the singleton pattern, which provides a means by which a single object can be shared to avoid needing to create additional instances.
           
           */
          
          // This is the card that we will copy
          let raidLeader = Card(name: "Raid Leader", mana: 3, attack: 2, defense: 2)
          
          // Now we use our faceless Manipulator card to clone the raidleader
          let facelessManipulator = raidLeader.clone()
          
          print("\(facelessManipulator.name, facelessManipulator.mana, facelessManipulator.attack, facelessManipulator.defense)")

     
     }
     
}





