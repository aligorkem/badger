//
//  BGKeywords.swift
//  badger
//
//  Created by aligorkem on 26/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

private class BGKeywords
{
	init()
	{
		
	}
	
	/**
	 *  KEYWORDS IN DECLARATIONS
	 class
	 deinit: This is deinitialization function,  use it when you need to do some action or cleanup before deallocating the object.
	 enum
	 * extension: This is very powerful and new feature. Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code
	 func
	 import
	 init
	 internal: Entities can be accessed anywhere within the target where they are defined
	 let
	 * operator: You can create a custom operator that may take care of custom logic behind
	 private
	 protocol
	 public
	 static
	 * struct: This allow you to encapsulate related properties and behaviors. You can define it, give it a name and then use it in your code. tructs are preferable if they are relatively small and copiable because copying is way safer than having multiple reference to the same instance as happens with classes. This is especially important when passing around a variable to many classes and/or in a multithreaded environment.
	 * subscript: Subscripts are shortcuts for accessing elements from a collection, sequence or list. They are used to set and retrieve values by index without needing separate methods for setting and retrieval. A type can have multiple subscripts and subscripts can have more than one dimension.
	 typealias: Typealias is used to rename an existing type. By doing this, we can change our code and make it more readable, and clearer in context.
	 var
	 */
	
	/**
	 *  KEYWORDS IN STATEMENTS
	 break
	 case
	 continue
	 default
	 do
	 else
	 fallthrough: Fallthrough is basically the opposite of `break` in C. Falling through is now opt-in instead of opt-out. This is one example of how Swift is more modern than C. In modern uses of switch statements, almost all of them want the break behaviour. Make this default and reduce code error.
	 for
	 if
	 in
	 return
	 switch
	 where
	 while
	 */
	
	/**
	 *  KEYWORDS IN EXPRESSIONS AND TYPES
	 as
	 dynamicType: You can use a dynamicType expression with an instance of a type to access that instance’s dynamic, runtime type as a value. Sample; someInstance.dynamicType.printClassName()
	 false
	 is
	 nil
	 self
	 Self
	 super
	 true
	 _COLUMN_
	 _FILE_
	 _FUNCTION_
	 _LINE_
	 */
	
	/**
	 *  KEYWORDS IN PARTICULAR CONTEXTS
	 associativity: In programming languages, the associativity (or fixity) of an operator is a property that determines how operators of the same precedence are grouped in the absence of parentheses.
	 convenience: For instance, a data class may have one designated initializer taking three arguments: a buffer, the length of the buffer, and a Boolean saying whether the buffer must be copied. It then may have convenience initializers which take only a buffer and length, or an Array of bytes, or another Data object. All of these will ultimately call self.init(buffer:length:copy:). Thus, when I subclass Data as MyData, I need only implement init(buffer:length:copy:) to be sure that my initializer is guaranteed to be invoked for every new MyData object.
	 dynamic: Apply this modifier to any member of a class that can be represented by Objective-C. When you mark a member declaration with the dynamic modifier, access to that member is always dynamically dispatched using the Objective-C runtime. Access to that member is never inlined or devirtualized by the compiler.
	 * didSet: Comes with a constant parameter that contains the old value, with the default name oldValue
	 * willSet: Comes with a constant parameter that contains the new value, with the default name newValue
	 final
	 get
	 set
	 infix
	 * inout: Most parameters are copied as values. They never affect the original call site. But inout parameters are different—they share a memory location.
	 lazy
	 left
	 mutating
	 none
	 nonmutating
	 optional
	 override
	 postfix
	 precedence
	 prefix
	 Protocol
	 required
	 right
	 Type
	 unowned
	 weak

	 */
	
}