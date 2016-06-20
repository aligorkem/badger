//
//  BGStack.swift
//  badger
//
//  Created by aligorkem on 17/06/2016.
//  Copyright © 2016 aligorkem. All rights reserved.
//

public class BGMergeSort : BGObject {
     
     
     func merge(leftPile leftPile: [Int], rightPile: [Int]) -> [Int] {
          // 1
          var leftIndex = 0
          var rightIndex = 0
          
          // 2
          var orderedPile = [Int]()
          
          // 3
          while leftIndex < leftPile.count && rightIndex < rightPile.count {
               if leftPile[leftIndex] < rightPile[rightIndex] {
                    orderedPile.append(leftPile[leftIndex])
                    leftIndex += 1
               } else if leftPile[leftIndex] > rightPile[rightIndex] {
                    orderedPile.append(rightPile[rightIndex])
                    rightIndex += 1
               } else {
                    orderedPile.append(leftPile[leftIndex])
                    leftIndex += 1
                    orderedPile.append(rightPile[rightIndex])
                    rightIndex += 1
               }
          }
          
          // 4
          while leftIndex < leftPile.count {
               orderedPile.append(leftPile[leftIndex])
               leftIndex += 1
          }
          
          while rightIndex < rightPile.count {
               orderedPile.append(rightPile[rightIndex])
               rightIndex += 1
          }
          
          return orderedPile
     }
}
