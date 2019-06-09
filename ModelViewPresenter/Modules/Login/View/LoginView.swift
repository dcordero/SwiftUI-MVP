import SwiftUI

struct LoginView: View, LoginUI {
    
    var presenter: LoginPresenter?
    
    @ObjectBinding var viewModel: LoginViewModel
    
    init(presenter: LoginPresenter?, viewModel: LoginViewModel) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    // MARK: - View
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField($viewModel.username, placeholder: Text("username"))
                    .border(Color.gray)
                TextField($viewModel.password, placeholder: Text("password"))
                    .border(Color.gray)
                
                Button(action: loginButtonWasPressed) {
                    Text("Login")
                }
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .font(.caption)
                        .color(Color.red)
                        .padding(20)
                }
                
                Text("You tried to login \(viewModel.numberOfAttempts) times")
                    .font(.subheadline)
                    .padding()
            }
            .padding()
            .navigationBarTitle(Text("Login"))
        }
    }
    
    // MARK: - Actions
    
    private func loginButtonWasPressed() {
        presenter?.loginButtonWasPressed()
    }
}
