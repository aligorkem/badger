protocol DoorCommand {
     func execute() -> String
}

class OpenCommand : DoorCommand {
     let doors:String
     
     required init(doors: String) {
          self.doors = doors
     }
     
     func execute() -> String {
          return "Opened \(doors)"
     }
}
