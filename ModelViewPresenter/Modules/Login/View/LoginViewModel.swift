import Foundation
import SwiftUI
import Combine

final class LoginViewModel: ObservableObject {
        
    var username: String = ""
    var password: String = ""
    
    @Published
    var errorMessage: String = ""
    
    @Published
    var numberOfAttempts: Int = 0
}
