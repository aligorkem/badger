class AddExp: IntegerExp {
     private var operand1: IntegerExp
     private var operand2: IntegerExp
     
     init(op1: IntegerExp, op2: IntegerExp) {
          self.operand1 = op1
          self.operand2 = op2
     }
     
     func evaluate(context: IntegerContext) -> Int {
          return self.operand1.evaluate(context) + self.operand2.evaluate(context)
     }
     
     func replace(character: Character, integerExp: IntegerExp) -> IntegerExp {
          return AddExp(op1: operand1.replace(character, integerExp: integerExp),
                        op2: operand2.replace(character, integerExp: integerExp))
     }
     
     func copy() -> IntegerExp {
          return AddExp(op1: self.operand1, op2: self.operand2)
     }
}