import Foundation

final class LoginPresenterImp: LoginPresenter {
    
    var ui: LoginUI?
    var viewModel: LoginViewModel
    var wireframe: Wireframe
    
    init(viewModel: LoginViewModel = LoginViewModel(), wireframe: Wireframe) {
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
        else if viewModel.username != "admin" || viewModel.password != "12345" {
            viewModel.errorMessage = "The provided credentials are not correct"
        }
        else {
            viewModel.errorMessage = ""
            wireframe.presentLoggedIn()
        }
        
        viewModel.username = ""
        viewModel.password = ""
    }
}
