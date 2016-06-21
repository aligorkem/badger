//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_State
{
     
     public init()
     {
          /*
           The state pattern is used to alter the behaviour of an object as its internal state changes. The pattern allows the class for an object to apparently change at run-time.
           
           Intent
           Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.
           An object-oriented state machine wrapper + polymorphic wrappee + collaboration
           
           Problem
           A monolithic object's behavior is a function of its state, and it must change its behavior at run-time depending on that state. Or, an application is characterixed by large and numerous case statements that vector flow of control based on the state of the application.
           
           Discussion
           The State pattern is a solution to the problem of how to make behavior depend on state.
           
           Define a "context" class to present a single interface to the outside world.
           Define a State abstract base class.
           Represent the different "states" of the state machine as derived classes of the State base class.
           Define state-specific behavior in the appropriate State derived classes.
           Maintain a pointer to the current "state" in the "context" class.
           To change the state of the state machine, change the current "state" pointer.
           
           */
          
          let context = Context()
          (context.isAuthorized, context.userId)
          context.changeStateToAuthorized(userId: "admin")
          (context.isAuthorized, context.userId) // now logged in as "admin"
          context.changeStateToUnauthorized()
          (context.isAuthorized, context.userId)
     
     }
     
}
