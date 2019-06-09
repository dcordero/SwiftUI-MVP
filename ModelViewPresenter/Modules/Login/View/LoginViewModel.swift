import Foundation
import SwiftUI
import Combine

final class LoginViewModel: BindableObject {
    
    let didChange = PassthroughSubject<LoginViewModel, Never>()
    
    var username: String = ""
    var password: String = ""
    
    var errorMessage: String = "" {
        didSet {
            didChange.send(self)
        }
    }
    
    var numberOfAttempts: Int = 0 {
        didSet {
            didChange.send(self)
        }
    }
}
