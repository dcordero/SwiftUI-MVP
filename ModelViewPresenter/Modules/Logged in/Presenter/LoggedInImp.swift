import UIKit

final class LoggedInPresenterImp: LoggedInPresenter {
    
    weak var hostingUI: UIViewController?
    var wireframe: Wireframe

    init(wireframe: Wireframe) {
        self.wireframe = wireframe
    }
    
    // MARK: - LoginPresenter
    
    func viewDidAppear() {
        print("> viewDidLoad")
    }
    
    func logoutButtonWasPressed() {
        wireframe.dismiss(hostingUI)
    }
}
