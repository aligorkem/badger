class MessageMediator: Mediator {
     private var colleagues: [Colleague] = []
     
     func addColleague(colleague: Colleague) {
          colleagues.append(colleague)
     }
     
     func send(message: String, colleague: Colleague) {
          for c in colleagues {
               if c !== colleague { //for simplicity we compare object references
                    c.receive(message)
               }
          }
     }
}
