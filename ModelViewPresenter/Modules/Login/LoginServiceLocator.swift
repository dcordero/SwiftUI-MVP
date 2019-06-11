import SwiftUI

final class LoginServiceLocator {
    
    static func provideLoginViewController() -> UIViewController {
        let presenter = LoginPresenterImp(wireframe: Wireframe.shared)
        let view = LoginView(presenter: presenter, viewModel: presenter.viewModel)
        let viewController = UIHostingController(rootView: view)
        presenter.hostingUI = viewController
        
        return viewController
    }
}
