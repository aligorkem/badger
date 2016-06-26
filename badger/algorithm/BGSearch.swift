//
//  BGLinearSearch.swift
//  badger
//
//  Created by aligorkem on 17/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

private class BGSearch: BGObject {
	
	override init() { }
	
	/**
	 Basic Linear Search
	 let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]
	 numbers.indexOf(43)  // returns 15

	 - parameter array:  the source of array
	 - parameter object: <#object description#>

	 - returns: if there is no value, returns nil
	 */
	func linearSearch<T: Equatable>(array: [T], _ object: T) -> Int? {
		for (index, obj) in array.enumerate() where obj == object {
			return index
		}
		return nil
	}
	
	func binarySearch<T: Comparable>(a: [T], key: T, range: Range<Int>) -> Int? {
		if range.startIndex >= range.endIndex {
			// If we get here, then the search key is not present in the array.
			return nil
			
		} else {
			// Calculate where to split the array.
			let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
			
			// Is the search key in the left half?
			if a[midIndex] > key {
				return binarySearch(a, key: key, range: range.startIndex ..< midIndex)
				
				// Is the search key in the right half?
			} else if a[midIndex] < key {
				return binarySearch(a, key: key, range: midIndex + 1 ..< range.endIndex)
				
				// If we get here, then we've found the search key!
			} else {
				return midIndex
			}
		}
	}
	
	func binarySearchIterative<T: Comparable>(a: [T], key: T) -> Int? {
		var range = 0..<a.count
		while range.startIndex < range.endIndex {
			let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
			if a[midIndex] == key {
				return midIndex
			} else if a[midIndex] < key {
				range.startIndex = midIndex + 1
			} else {
				range.endIndex = midIndex
			}
		}
		return nil
	}
	
}
