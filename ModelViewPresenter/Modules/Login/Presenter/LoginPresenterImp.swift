import UIKit

final class LoginPresenterImp: LoginPresenter {
    
    weak var hostingUI: UIViewController?
    
    private var viewModel: LoginViewModel
    private var wireframe: Wireframe
    
    init(viewModel: LoginViewModel, wireframe: Wireframe) {
        self.viewModel = viewModel
        self.wireframe = wireframe
    }
    
    // MARK: - LoginPresenter
    
    func loginButtonWasPressed() {
        print("> LoginButtonWasPressed")

        viewModel.numberOfAttempts += 1
        
        if viewModel.username == "" || viewModel.password == "" {
            viewModel.errorMessage = "Please provide your username and password"
        }
        else if viewModel.username != "Admin" || viewModel.password != "12345" {
            viewModel.errorMessage = "The provided credentials are not correct"
        }
        else if let hostingUI = hostingUI {
            viewModel.errorMessage = ""
            wireframe.presentLoggedIn(from: hostingUI)
        }
        
        viewModel.username = ""
        viewModel.password = ""
    }
}
