class CloseCommand : DoorCommand {
     let doors:String
     
     required init(doors: String) {
          self.doors = doors
     }
     
     func execute() -> String {
          return "Closed \(doors)"
     }
}
