import UIKit

final class LoggedInPresenterImp: LoggedInPresenter {
    
    weak var hostingUI: UIViewController?
    
    private var wireframe: Wireframe

    init(wireframe: Wireframe) {
        self.wireframe = wireframe
    }
    
    // MARK: - LoginPresenter
    
    func viewDidAppear() {
        print("> viewDidAppear")
    }
    
    func logoutButtonWasPressed() {
        wireframe.dismiss(hostingUI)
    }
}
