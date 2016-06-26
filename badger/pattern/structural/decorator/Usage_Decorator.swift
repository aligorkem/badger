//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Decorator
{
     public init()
     {
          /*
           What is it?
           The decorator pattern allows the behavior of individual objects to be changed without requiring changes to the classes that are used to create them or the components that consume them.
           
           What are the benefits?
           The changes in behavior defined with the decorator pattern can be combined to create complex effects without needing to create large numbers of subclasses.
           
           When should you use this pattern?
           Use this pattern when you need to change the behavior of objects without changing the class they are created from or the components that use them.
           
           When should you avoid this pattern?
           Do not use this pattern when you are able to change the class that creates the objects you want to modify. It is usually simpler and easier to modify the class directly.
           
           How do you know when you have implemented the pattern correctly?
           The pattern has been implemented correctly when you can select some of the objects created from a class to be modified without affecting all of them and without requiring changes to the class.
           
           Are there any common pitfalls?
           The main pitfall is implementing the pattern so that it affects all of the objects created from a given class rather than allowing changes to be applied selectively. A less common pitfall is implementing the pattern so that it has hidden side effects that are not related to the original purpose of the objects being modified.
           
           Are there any related patterns?
           Many of the structural patterns have similar implementations but different intents. Ensure that you select the correct pattern from the ones I describe in this
           part of the book.
           */
          
          let account = CustomerAccount(name:"Joe");
          
          account.addPurchase(Purchase(product: "Red Hat", price: 10));
          account.addPurchase(Purchase(product: "Scarf", price: 20));
          account.addPurchase(EndOfLineDecorator(purchase: BlackFridayDecorator(purchase:
               GiftOptionDecorator(purchase: Purchase(product: "Sunglasses", price:25),
                    options: GiftOptionDecorator.OPTION.GIFTWRAP,
                    GiftOptionDecorator.OPTION.DELIVERY))));
          
          account.printAccount();
          
          for p in account.purchases {
               if let d = p as? DiscountDecorator {
                    print("\(p) has \(d.countDiscounts()) discounts");
               } else {
                    print("\(p) has no discounts");
               }
          }

          
          
     }
     
}











