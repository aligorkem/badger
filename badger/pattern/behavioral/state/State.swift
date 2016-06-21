protocol State {
     func isAuthorized(context: Context) -> Bool
     func userId(context: Context) -> String?
}
