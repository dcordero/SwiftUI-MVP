import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        setUpWindow(windowScene: windowScene)
    }
    
    // MARK: - Private
    
    private func setUpWindow(windowScene: UIWindowScene) {
        window = UIWindow(windowScene: windowScene)
        Wireframe.shared.presentInitialViewController(window: window!)
        window?.makeKeyAndVisible()
    }
}
