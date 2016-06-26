//
//  Usage.swift
//  badger
//
//  Created by aligorkem on 20/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

public class Usage_Proxy {
	
	public init() {
		/*

		 What is it?
		 The proxy pattern defines an object—the proxy—that represents some other
		 resource, such as another object or a remote service. Calling components
		 operate
		 on the proxy, which in turn operates on the underlying resource.

		 What are the benefits?
		 Proxies allow close control over the way that the underlying resource is
		 accessed, which is useful when you need to intercept and adapt operations.

		 When should you use this pattern?
		 Proxies are used in three main situations: to define an interface to a
		 remote
		 resource such as a web page or RESTful service, to manage the execution of
		 expensive operations, and to restrict access to the methods and properties
		 of
		 other objects.

		 When should you avoid this pattern?
		 Do not use this pattern when the problem falls outside of the three
		 situations
		 that I describe in this chapter. Instead, use one of the other structural
		 patterns.

		 How do you know when you have implemented the pattern correctly?
		 The pattern is implemented correctly when the proxy object can be used to
		 perform operations on the resource it represents.

		 Are there any common pitfalls?
		 The only pitfall is allowing instances of the underlying class to be
		 instantiated when a proxy is used to restrict access to an object.

		 Are there any related patterns?
		 Many of the structural patterns have similar implementations but different intents. Ensure that you select the correct pattern from the ones
		 I describe in this part of the book.

		 */
		
		let url = "http://www.apress.com";
		let headers = ["Content-Length", "Content-Encoding"];
		
		let proxy = AccessControlProxy(url: url);
		
		for
		header in headers {
			proxy.getHeader(header, callback
				: {
						header, val in if (val != nil) {
							print("\(header): \(val!)");
						}
			});
		}
		
		UserAuthentication.sharedInstance.authenticate("bob", pass
			: "secret");
		proxy.execute();
		NSFileHandle.fileHandleWithStandardInput().availableData;
		
		BGColorLog.red("This is a log.")
		BGColorLog.blue("Number one hundred: \(100).")
		
	}
}
