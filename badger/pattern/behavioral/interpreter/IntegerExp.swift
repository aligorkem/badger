protocol IntegerExp {
     func evaluate(context: IntegerContext) -> Int
     func replace(character: Character, integerExp: IntegerExp) -> IntegerExp
     func copy() -> IntegerExp
}