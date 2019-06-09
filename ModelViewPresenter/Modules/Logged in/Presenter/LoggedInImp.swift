import Foundation

final class LoggedInPresenterImp: LoggedInPresenter {
    
    var ui: LoggedInView?
    var wireframe: Wireframe

    init(wireframe: Wireframe) {
        self.wireframe = wireframe
    }
    
    // MARK: - LoginPresenter
    
    func viewDidAppear() {
        print("> viewDidLoad")
    }
    
    func logoutButtonWasPressed() {
        wireframe.dismissLoggedIn()
    }
}
