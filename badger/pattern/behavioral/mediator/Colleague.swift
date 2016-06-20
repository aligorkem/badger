class Colleague {
     let name: String
     let mediator: Mediator
     
     init(name: String, mediator: Mediator) {
          self.name = name
          self.mediator = mediator
     }
     
     func send(message: String) {
          mediator.send(message, colleague: self)
     }
     
     func receive(message: String) {
          assert(false, "Method should be overriden")
     }
}