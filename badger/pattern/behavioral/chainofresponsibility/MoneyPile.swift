public class MoneyPile {
     let value: Int
     var quantity: Int
     var nextPile: MoneyPile?
     
     init(value: Int, quantity: Int, nextPile: MoneyPile?) {
          self.value = value
          self.quantity = quantity
          self.nextPile = nextPile
     }
     
     func canWithdraw(v: Int) -> Bool {
          
          var v = v
          
          func canTakeSomeBill(want: Int) -> Bool {
               return (want / self.value) > 0
          }
          
          var q = self.quantity
          
          while canTakeSomeBill(v) {
               
               if q == 0 {
                    break
               }
               
               v -= self.value
               q -= 1
          }
          
          if v == 0 {
               return true
          } else if let next = self.nextPile {
               return next.canWithdraw(v)
          }
          
          return false
     }
}