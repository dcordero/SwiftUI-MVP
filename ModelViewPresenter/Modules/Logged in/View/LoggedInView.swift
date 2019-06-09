import SwiftUI

struct LoggedInView: View, LoggedInUI{
    
    var presenter: LoggedInPresenter?

    // MARK: - View
    
    var body: some View {
        
        VStack {
            Text("👍").font(.title)
            Text("Welcome !").font(.caption)
            
            Button(action: logoutButtonWasPressed) {
                Text("Logout")
            }.padding()
        }
        .onAppear(perform: viewDidAppear)
    }
    
    // MARK: - Actions

    func viewDidAppear() {
        presenter?.viewDidAppear()
    }
    
    private func logoutButtonWasPressed() {
        presenter?.logoutButtonWasPressed()
    }
}
