import SwiftUI


final class Wireframe {
    
    static let shared = Wireframe()

    private init() { }
    
    func presentInitialViewController(window: UIWindow) {
        let viewController = LoginServiceLocator.provideLoginViewController()
        window.rootViewController = viewController
    }
    
    func presentLoggedIn(from fromViewController: UIViewController) {
        let viewController = LoggedInServiceLocator.provideLoggedInViewController()
        viewController.modalPresentationStyle = .overFullScreen
        fromViewController.present(viewController, animated: true, completion: nil)
    }
    
    func dismiss(_ viewController: UIViewController?) {
        viewController?.dismiss(animated: true, completion: nil)
    }
}
