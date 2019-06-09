import SwiftUI


final class Wireframe {
    
    var currentViewController: UIViewController? = nil
    
    static let shared = Wireframe()

    private init() { }
    
    func presentInitialViewController(window: UIWindow) {
        let viewController = LoginServiceLocator.provideLoginViewController()
        window.rootViewController = viewController
        currentViewController = viewController
    }
    
    func presentLoggedIn() {
        let viewController = LoggedInServiceLocator.provideLoggedInViewController()
        viewController.modalPresentationStyle = .overFullScreen
        currentViewController?.present(viewController, animated: true, completion: {
            self.currentViewController = viewController
        })
    }
    
    func dismissLoggedIn() {
        currentViewController?.dismiss(animated: true, completion: nil)
    }
}
