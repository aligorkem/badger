class IntegerContext {
     private var data: [Character:Int] = [:]
     
     func lookup(name: Character) -> Int {
          return self.data[name]!
     }
     
     func assign(integerVarExp: IntegerVarExp, value: Int) {
          self.data[integerVarExp.name] = value
     }
}