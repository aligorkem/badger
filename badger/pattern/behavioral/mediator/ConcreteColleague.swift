class ConcreteColleague: Colleague {
     override func receive(message: String) {
          print("Colleague \(name) received: \(message)")
     }
}