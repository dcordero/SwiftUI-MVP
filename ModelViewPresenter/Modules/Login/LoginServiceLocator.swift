import SwiftUI

final class LoginServiceLocator {
    
    static func provideLoginViewController() -> UIViewController {
        let viewModel = LoginViewModel()
        let presenter = LoginPresenterImp(viewModel: viewModel, wireframe: Wireframe.shared)
        let view = LoginView(presenter: presenter, viewModel: viewModel)
        let viewController = UIHostingController(rootView: view)
        presenter.hostingUI = viewController
        
        return viewController
    }
}
