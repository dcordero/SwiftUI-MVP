import SwiftUI

protocol LoginUI {
    var presenter: LoginPresenter? { get set }
    var viewModel: LoginViewModel { get set }
}
