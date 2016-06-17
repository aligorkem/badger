//
//  BGLinearSearch.swift
//  badger
//
//  Created by aligorkem on 17/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

import UIKit

class BGLinearSearch: BGObject {
     
     override init(){}

     func linearSearch<T: Equatable>(array: [T], _ object: T) -> Int? {
          for (index, obj) in array.enumerate() where obj == object {
               return index
          }
          return nil
     }
     
}
