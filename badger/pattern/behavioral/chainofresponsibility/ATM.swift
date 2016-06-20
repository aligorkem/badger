
public class ATM {
     private var hundred: MoneyPile
     private var fifty: MoneyPile
     private var twenty: MoneyPile
     private var ten: MoneyPile
     
     private var startPile: MoneyPile {
          return self.hundred
     }
     
     init(hundred: MoneyPile,
          fifty: MoneyPile,
          twenty: MoneyPile,
          ten: MoneyPile) {
          
          self.hundred = hundred
          self.fifty = fifty
          self.twenty = twenty
          self.ten = ten
     }
     
     func canWithdraw(value: Int) -> String {
          return "Can withdraw: \(self.startPile.canWithdraw(value))"
     }
}