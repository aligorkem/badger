class UnauthorizedState: State {
     func isAuthorized(context: Context) -> Bool { return false }
     
     func userId(context: Context) -> String? { return nil }
}