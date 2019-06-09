import SwiftUI

final class LoggedInServiceLocator {
    
    static func provideLoggedInViewController() -> UIViewController {
        let presenter = LoggedInPresenterImp(wireframe: Wireframe.shared)
        let view = LoggedInView(presenter: presenter)
        presenter.ui = view
        
        return UIHostingController(rootView: view)
    }
}
