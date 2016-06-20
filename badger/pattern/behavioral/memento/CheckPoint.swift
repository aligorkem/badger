enum CheckPoint {
    static func saveState(memento: Memento, keyName: String = DPMementoGameState) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(memento, forKey: keyName)
        defaults.synchronize()
    }

    static func restorePreviousState(keyName keyName: String = DPMementoGameState) -> Memento {
        let defaults = NSUserDefaults.standardUserDefaults()

        return defaults.objectForKey(keyName) as? Memento ?? Memento()
    }
}