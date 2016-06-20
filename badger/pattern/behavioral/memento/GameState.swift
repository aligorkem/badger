typealias Memento = Dictionary<NSObject, AnyObject>

let DPMementoKeyChapter = "com.valve.halflife.chapter"
let DPMementoKeyWeapon = "com.valve.halflife.weapon"
let DPMementoGameState = "com.valve.halflife.state"


class GameState {
     var chapter: String = ""
     var weapon: String = ""
     
     func toMemento() -> Memento {
          return [ DPMementoKeyChapter:chapter, DPMementoKeyWeapon:weapon ]
     }
     
     func restoreFromMemento(memento: Memento) {
          chapter = memento[DPMementoKeyChapter] as? String ?? "n/a"
          weapon = memento[DPMementoKeyWeapon] as? String ?? "n/a"
     }
}