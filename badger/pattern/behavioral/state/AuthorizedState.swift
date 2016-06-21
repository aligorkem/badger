class AuthorizedState: State {
     let userId: String
     
     init(userId: String) { self.userId = userId }
     
     func isAuthorized(context: Context) -> Bool { return true }
     
     func userId(context: Context) -> String? { return userId }
}