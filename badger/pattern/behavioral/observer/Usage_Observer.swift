//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Observer
{
     
     public init()
     {
          /*
           What is it?
           The observer pattern allows one object to register to receive notifications about changes in another object without needing to depend on the implementation of that object.
           
           What are the benefits?
           This pattern simplifies application design by allowing objects that provide notifications to do so in a uniform way without needing to know how those notifications are processed and acted on by the recipients.
           
           When should you use this pattern?
           Use this pattern whenever one object needs to receive notifications about changes in another object but where the sender of the notifications does not depend on the recipient to complete its work.
           
           When should you avoid this pattern?
           Do not use this pattern unless the sender of the notifications is functionally dependent from the recipients, such that the recipients could be removed from the application without preventing the sender from performing its work.
           
           How do you know when you have implemented the pattern correctly?
           The observer pattern is implemented correctly when an object can receive notifications without being tightly coupled to the object that sends them.
           
           Are there any common pitfalls?
           The biggest pitfall with this pattern is allowing the objects that send and receive notifications to become interdependent.
           
           Are there any related patterns?
           No
           
           */
          
          // create meta observer
          let monitor = AttackMonitor();
          MetaSubject.sharedInstance.addObservers(monitor);
          
          // create regular observers
          let log = ActivityLog();
          let cache = FileCache();
          
          let authM = AuthenticationManager();
          // register only the regular observers
          authM.addObservers(cache, monitor);
          
          authM.authenticate("bob", pass: "secret");
          print("-----");
          authM.authenticate("joe", pass: "shhh");
     }
     
}
