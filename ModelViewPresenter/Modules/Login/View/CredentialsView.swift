import SwiftUI

struct CredentialsView: View {
    
    @Binding var username: String
    @Binding var password: String
    
    // MARK: - View
    
    var body: some View {
        VStack {
            TextField($username, placeholder: Text("username"))
                .border(Color.gray)
            TextField($password, placeholder: Text("password"))
                .border(Color.gray)
        }
    }
}
