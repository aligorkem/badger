//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Builder
{
     
     public init()
     {
          /*
           
           What is it?
           The builder pattern puts the logic and default configuration values required to create an object into a builder class. This allows calling components to create objects with minimal configuration data and without needing to know the default values that will be used to create the object.
           
           What are the benefits?
           This pattern makes it easier to change the default configuration values used to create an object and to change the class from which instances are created.
           
           When should you use this pattern?
           Use this pattern when a complex configuration process is required to create an object and you don’t want the default configuration values to be disseminated throughout the application.
           
           When should you avoid this pattern?
           Don’t use this pattern when every data value required to create an object will be different for each instance.
           
           How do you know when you have implemented the pattern correctly?
           The calling component can create objects by providing just the data values for which there are no default values (although values may also be provided to override some or all of the defaults).
           
           Are there any common pitfalls? 
           No.
           
           Are there any related patterns?
           This pattern can be combined with the factory method or abstract factory patterns to change the implementation class used to create the object based on the configuration data provided by the calling component.
           
           
           
           */
          
          
          
          // Step 1 - Ask for name
          let name = "Joe";
          
          // Step 2 - Select a Product
          let builder = BurgerBuilder.getBuilder(Burgers.BIGBURGER);
          
          // Step 3 - Customize burger?
          builder.setMayo(false);
          builder.setCooked(Burger.Cooked.WELLDONE);
          
          let order = builder.buildObject(name);
          
          order.printDescription();

          
          
     }
     
}





