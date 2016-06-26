//
//  BGObjectTypes.swift
//  badger
//
//  Created by aligorkem on 26/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

private class BGObjectType
{
	
	// Floats and Doubles
	let priceInferred = 19.99
	let priceExplicit: Double = 19.99
	
	// Bools - Use true / false not YES/NO
	let onSaleInferred = true
	let onSaleExplicit: Bool = false
	
	// Strings
	let nameInferred = "Whoopie Cushion"
	let nameExplicit: String = "Whoopie Cushion"
	
	let total: Double
	let taxPct: Double
	let subtotal: Double
	
	/**
	 Initializer function for BGObjectType class

	 - parameter total:  total description
	 - parameter taxPct: taxPct description

	 */
	init(total: Double, taxPct: Double) {
		self.total = total
		self.taxPct = taxPct
		subtotal = total / (taxPct + 1)
	}
	
	/**
	 Sample function that does nothing
	 */
	public func sampleFunction()
	{
		// If statements and string interpolation
		if (onSaleInferred) {
			print("\(nameInferred) on sale for \(priceInferred)!")
		} else {
			print("\(nameInferred) at regular price: \(priceInferred)!")
		}
	}
	
}