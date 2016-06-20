class IntegerVarExp: IntegerExp {
     let name: Character
     
     init(name: Character) {
          self.name = name
     }
     
     func evaluate(context: IntegerContext) -> Int {
          return context.lookup(self.name)
     }
     
     func replace(name: Character, integerExp: IntegerExp) -> IntegerExp {
          if name == self.name {
               return integerExp.copy()
          } else {
               return IntegerVarExp(name: self.name)
          }
     }
     
     func copy() -> IntegerExp {
          return IntegerVarExp(name: self.name)
     }
}