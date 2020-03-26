import SwiftUI

struct CredentialsView: View {
    
    @Binding var username: String
    @Binding var password: String
    
    // MARK: - View
    
    var body: some View {
        VStack {
            TextField("username", text: $username)
                .border(Color.gray)
            TextField("password", text: $password)
                .border(Color.gray)
        }
    }
}
