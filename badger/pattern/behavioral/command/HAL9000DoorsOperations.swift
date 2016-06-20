class HAL9000DoorsOperations {
     let openCommand: DoorCommand
     let closeCommand: DoorCommand
     
     init(doors: String) {
          self.openCommand = OpenCommand(doors:doors)
          self.closeCommand = CloseCommand(doors:doors)
     }
     
     func close() -> String {
          return closeCommand.execute()
     }
     
     func open() -> String {
          return openCommand.execute()
     }
}