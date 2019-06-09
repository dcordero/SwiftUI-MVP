import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        setUpWindow()
    }
    
    // MARK: - Private
    
    private func setUpWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        Wireframe.shared.presentInitialViewController(window: window!)
        window?.makeKeyAndVisible()
    }
}
