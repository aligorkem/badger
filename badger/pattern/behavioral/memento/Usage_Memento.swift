//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Memento
{
     
     public init()
     {
          /*
           What is it?
           The memento pattern captures the complete state of an object into a memento that can be used to reset the object at a later date.
           
           What are the benefits?
           The memento pattern allows a complete reset of an object without the need to track and apply individual undo commands.
           
           When should you use this pattern? When should you avoid this pattern?
           Use this pattern when there is a “known-good” point in an object’s life that you may want to return to at some point in the future.
           This pattern should be used only when you need to return an object to an earlier state. Use the command pattern, as described in Chapter 20, if you need to add support for undoing the effect of only the most recent operation.
           
           How do you know when you have implemented the pattern correctly?
           The pattern is implemented correctly if the object can be returned to an earlier state from any starting position.
           
           Are there any common pitfalls? Are there any related patterns?
           The most common pitfall is to not completely capture or set the state. The memento and command patterns share a common philosophy.

           */
          
          var gameState = GameState()
          gameState.restoreFromMemento(CheckPoint.restorePreviousState())
          
          gameState.chapter = "Black Mesa Inbound"
          gameState.weapon = "Crowbar"
          CheckPoint.saveState(gameState.toMemento())
          
          gameState.chapter = "Anomalous Materials"
          gameState.weapon = "Glock 17"
          gameState.restoreFromMemento(CheckPoint.restorePreviousState())
          
          gameState.chapter = "Unforeseen Consequences"
          gameState.weapon = "MP5"
          CheckPoint.saveState(gameState.toMemento(), keyName: "gameState2")
          
          gameState.chapter = "Office Complex"
          gameState.weapon = "Crossbow"
          CheckPoint.saveState(gameState.toMemento())
          
          gameState.restoreFromMemento(CheckPoint.restorePreviousState(keyName: "gameState2"))
     
     }
     
}
