import SwiftUI

struct LoginView: View {
    
    private var presenter: LoginPresenter?
    
    @ObservedObject
    private var viewModel: LoginViewModel
    
    init(presenter: LoginPresenter?, viewModel: LoginViewModel) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    // MARK: - View
    
    var body: some View {
        
        NavigationView {
            VStack {
                CredentialsView(username: $viewModel.username, password: $viewModel.password)
                
                Button(action: loginButtonWasPressed) {
                    Text("Login")
                }
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .font(.caption)
                        .foregroundColor(Color.red)
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
