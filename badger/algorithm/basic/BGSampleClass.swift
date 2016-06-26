//
//  BGSampleClass.swift
//  badger
//
//  Created by aligorkem on 26/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import Foundation

private class BGSampleClass {
	
	// variables
	let total: Double
	let taxPct: Double
	let subtotal: Double
	
	/**
	 Initializer class

	 - parameter total:  total description
	 - parameter taxPct: taxPct description
	 */
	init(total: Double, taxPct: Double) {
		self.total = total
		self.taxPct = taxPct
		subtotal = total / (taxPct + 1)
	}
	
	/**
	 This function calculates tips.

	 - parameter tipPct: tipPct description
	 - returns: It returns percentage
	 */
	func calcTipWithTipPct(tipPct: Double) -> Double {
		return subtotal * tipPct
	}
	
	/**
	 It prints possible tips
	 */
	func printPossibleTips() {
		let possibleTipsInferred = [0.15, 0.18, 0.20]
		let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
		
		// preferred one
		for possibleTip in possibleTipsInferred {
			print("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
		}
		
		// same logic in a different way
		for i in 0..<possibleTipsInferred.count {
			let possibleTip = possibleTipsInferred[i]
			print("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
		}
		
	}
	
	/**
	 This function returns possible tips.

	 - returns: tips as double
	 */
	func returnPossibleTips() -> [Int: Double] {
		// [Int: Double] is just a shortcut for Dictionary<Int, Double>.
		
		let possibleTipsInferred = [0.15, 0.18, 0.20]
		var retval = [Int: Double]()
		for possibleTip in possibleTipsInferred {
			let intPct = Int(possibleTip * 100)
			retval[intPct] = calcTipWithTipPct(possibleTip)
		}
		return retval
		
	}
	
}