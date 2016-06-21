class Context {
     private var state: State = UnauthorizedState()
     
     var isAuthorized: Bool {
          get { return state.isAuthorized(self) }
     }
     
     var userId: String? {
          get { return state.userId(self) }
     }
     
     func changeStateToAuthorized(userId userId: String) {
          state = AuthorizedState(userId: userId)
     }
     
     func changeStateToUnauthorized() {
          state = UnauthorizedState()
     }
     
}