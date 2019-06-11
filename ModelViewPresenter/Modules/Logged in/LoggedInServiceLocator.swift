import SwiftUI

final class LoggedInServiceLocator {
    
    static func provideLoggedInViewController() -> UIViewController {
        let presenter = LoggedInPresenterImp(wireframe: Wireframe.shared)
        let view = LoggedInView(presenter: presenter)
        let viewController = UIHostingController(rootView: view)
        presenter.hostingUI = viewController
        
        return viewController
    }
}
