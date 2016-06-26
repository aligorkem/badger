//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Bridge
{
     
     public init()
     {
          /*
           
           What is it?
           The bridge pattern separates an abstraction from its implementation so that either can be changed without a corresponding change in the other. More commonly, the bridge pattern is used to resolve a problem known as an exploding class hierarchy, which usually arises through repeated but poorly thought-out refactoring and requires an ever-increasing number of classes to add new features to the application.
           
           What are the benefits?
           When the bridge pattern is applied to the exploding class hierarchy problem, the benefit is that adding a new feature to the application requires only a single class. More broadly, the pattern isolates the impact of a change when an abstraction or its implementation changes.
           
           When should you use this pattern? 
           Use this pattern to resolve the exploding class hierarchy problem or to bridge between one API and another.
           
           When should you avoid this pattern?
           Do not use this pattern when attempting to integrate third-party components; use the adapter pattern I described in Chapter 12 instead.

           How do you know when you have implemented the pattern correctly?
           In the case of the exploding class hierarchy problem, the pattern is correctly implemented when adding a new feature or when support for a new platform can be done with a single class. More broadly, the pattern is implemented correctly when you can change an abstraction (such as a protocol or a closure signature) without having to make a corresponding change in its implementation.
           
           Are there any common pitfalls? 
           The exploding class hierarchy will not be resolved if the common code is not separated from the platform-specific code.
           
           Are there any related patterns?
           Many of the structural patterns have similar implementations but different intents. Ensure that you select the correct pattern from the ones that I describe in this part of the book.
           
           */
          
          var comms = Communicator(channel: Channel.Channels.Satellite);
          
          comms.sendCleartextMessage("Hello!");
          comms.sendSecureMessage("This is a secret");
          comms.sendPriorityMessage("This is important");

          
     }
     
}







