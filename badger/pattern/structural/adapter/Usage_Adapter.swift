//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Adapter
{
     
     public init()
     {
          /*
           
           What is it?
           The adapter pattern allows two components with incompatible APIs to work together by introducing an adapter that maps from one component to the other.
           
           What are the benefits?
           This pattern allows you to integrate components for which you cannot modify the source code into your application. This is a common problem when you use a third-party framework or when you are consuming the output from another project.
           
           When should you use this pattern?
           When should you avoid this pattern?
           How do you know when you have implemented the pattern correctly?
           Are there any common pitfalls?
           Are there any related patterns?
           Answer
           
           
           Use this pattern when you need to integrate a component that provides similar functionality to other components in the application but that uses an incompatible API to do so.
           Do not use this pattern when you are able to modify the source code of the component that you want to integrate or when it is possible to migrate the data provided by the component directly into your application.
           The pattern is implemented correctly when the adapter allows the component to be integrated into the application without requiring modification of the application or the component.
           The only pitfall is trying to extend the pattern to force integration of a component that does not provide the functionality intended by the API for which it is being adapted.
           Many of the structural patterns have similar implementations but different intents. Ensure that you select the correct pattern from the ones I describe in this part of the book.
           
           
           */
          
          let search = SearchTool(dataSources: SalesDataSource(),
                                  DevelopmentDataSource(), NewCoDirectoryAdapter());
          
          print("--List--");
          for e in search.employees {
               print("Name: \(e.name)");
          }
          
          print("--Search--");
          for e in search.search("VP", type: SearchTool.SearchType.TITLE) {
               print("Name: \(e.name), Title: \(e.title)");
          }

          
     }
     
}







