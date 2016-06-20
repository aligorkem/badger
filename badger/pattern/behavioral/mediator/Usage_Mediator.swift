//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Mediator
{
     
     public init()
     {
          /*
           What is it?
           The mediator pattern simplifies peer-to-peer communication between objects by introducing a mediator object that acts as a communications broker between the objects.
           
           What are the benefits?
           Instead of having to keep track of and communicate with of all of its peers individually, an object just deals with the mediator.
           
           When should you use this pattern? When should you avoid this pattern?
           Use this pattern when you are dealing with a group of objects that need to communicate freely between one another.
           Don’t use this pattern if you have one object that needs to send notifications to a range of disparate objects; use the observer pattern described in Chapter 22 instead.
           
           How do you know when you have implemented the pattern correctly?
           The mediator pattern is implemented correctly when each object deals only with the mediator and has no direct knowledge of its peers.
           It is important that the mediator not provide peers with access to one another so that they might become interdependent.
           
           Are there any common pitfalls? Are there any related patterns?
           This pattern is closely related to—and often combined with—the observer pattern that I describe in Chapter 22.
           
           */
          
          let messagesMediator = MessageMediator()
          let user0 = ConcreteColleague(name: "0", mediator: messagesMediator)
          let user1 = ConcreteColleague(name: "1", mediator: messagesMediator)
          messagesMediator.addColleague(user0)
          messagesMediator.addColleague(user1)
          
          user0.send("Hello") // user1 receives message
     }
     
}
